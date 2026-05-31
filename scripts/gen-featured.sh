#!/usr/bin/env bash
# Generate a white-background, blue-text featured.png for a publication directory.
# Matches the soft-blue isometric illustration palette used across the site.
#
# Usage: scripts/gen-featured.sh <pub-dir> "<year>" "<short title>" "<subtitle/tag>"
# Example:
#   scripts/gen-featured.sh content/publications/2025-store-stockpile-campaign \
#       2025 "Sonaeru Fair" "POS Data × Disaster Preparedness"
set -euo pipefail

DIR="$1"; YEAR="$2"; TITLE="$3"; SUB="$4"
TMP="$(mktemp -t featured).svg"

# Palette (matches the reference illustration):
#   primary blue : #4A8BD8  (title)
#   deep blue    : #2C5FA8  (year)
#   soft blue    : #7FB0E8  (subtitle)
#   accent line  : #4A8BD8
#   background   : #FFFFFF

cat > "$TMP" <<EOF
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630">
  <rect width="1200" height="630" fill="#FFFFFF"/>
  <!-- thin accent line -->
  <rect x="80" y="180" width="120" height="4" fill="#4A8BD8"/>
  <!-- year -->
  <text x="80" y="160" font-family="Helvetica, Arial, sans-serif"
        font-size="28" font-weight="600" fill="#2C5FA8" letter-spacing="6">${YEAR}</text>
  <!-- title -->
  <text x="80" y="290" font-family="Helvetica, Arial, sans-serif"
        font-size="68" font-weight="700" fill="#4A8BD8">${TITLE}</text>
  <!-- subtitle -->
  <text x="80" y="360" font-family="Helvetica, Arial, sans-serif"
        font-size="30" font-weight="400" fill="#7FB0E8">${SUB}</text>
</svg>
EOF

sips -s format png "$TMP" --out "$DIR/featured.png" >/dev/null
rm -f "$TMP"
echo "wrote $DIR/featured.png"
