#!/bin/bash
set -e

# Configuration
SING_BOX_VERSION="1.11.4" # Or "latest" logic, but pinned is safer for stability
WORK_DIR="rule-set"
mkdir -p "$WORK_DIR"

# URLs for HaGeZi AdGuard Home formats
declare -A RULES
RULES=(
    ["hagezi-light"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adguard/light.txt"
    ["hagezi-normal"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adguard/normal.txt"
    ["hagezi-pro"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adguard/pro.txt"
    ["hagezi-pro-plus"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adguard/pro.plus.txt"
    ["hagezi-ultimate"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adguard/ultimate.txt"
)

# 1. Download sing-box if not present
if ! command -v ./sing-box &> /dev/null; then
    echo "Downloading sing-box..."
    # Determine architecture
    ARCH=$(uname -m)
    case $ARCH in
        x86_64)  SB_ARCH="amd64" ;;
        aarch64) SB_ARCH="arm64" ;;
        *)       echo "Unsupported architecture: $ARCH"; exit 1 ;;
    esac
    
    # We use the specific version to ensure compatibility
    wget -qO- "https://github.com/SagerNet/sing-box/releases/download/v${SING_BOX_VERSION}/sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}.tar.gz" | tar -xz
    mv "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}/sing-box" .
    rm -rf "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}"
    chmod +x sing-box
fi

# 2. Process Rules
for NAME in "${!RULES[@]}"; do
    URL="${RULES[$NAME]}"
    echo "Processing $NAME from $URL..."
    
    # Download raw rule
    wget -qO "${NAME}.txt" "$URL"
    
    # Convert to SRS
    # Using --type adguard as recommended
    ./sing-box rule-set convert --type adguard --output "$WORK_DIR/${NAME}.srs" "${NAME}.txt"
    
    # Clean up raw text file
    rm "${NAME}.txt"
    
    echo "$NAME converted successfully."
done

echo "All rules processed. Files are in $WORK_DIR/"
