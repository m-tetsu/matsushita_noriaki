#!/usr/bin/env bash
# Generate a blue-themed featured.png for a publication directory.
# Usage: scripts/gen-featured.sh <pub-dir> "<year>" "<short title>" "<subtitle/tag>"
# Example:
#   scripts/gen-featured.sh content/publications/2025-store-stockpile-campaign \
#       2025 "Sonaeru Fair" "POS Data × Disaster Preparedness"
set -euo pipefail

DIR="$1"; YEAR="$2"; TITLE="$3"; SUB="$4"
TMP="$(mktemp -t featured).svg"

cat > "$TMP" <<EOF
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630">
  <defs>
    <linearGradient id="g" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0"   stop-color="#0c2c54"/>
      <stop offset="0.55" stop-color="#1e63b8"/>
      <stop offset="1"   stop-color="#38bdf8"/>
    </linearGradient>
  </defs>
  <rect width="1200" height="630" fill="url(#g)"/>
  <!-- thin accent line -->
  <rect x="80" y="180" width="120" height="4" fill="#ffffff" opacity="0.9"/>
  <!-- year -->
  <text x="80" y="160" font-family="Helvetica, Arial, sans-serif"
        font-size="28" font-weight="600" fill="#bfe3ff" letter-spacing="6">${YEAR}</text>
  <!-- title -->
  <text x="80" y="290" font-family="Helvetica, Arial, sans-serif"
        font-size="68" font-weight="700" fill="#ffffff">${TITLE}</text>
  <!-- subtitle -->
  <text x="80" y="360" font-family="Helvetica, Arial, sans-serif"
        font-size="30" font-weight="400" fill="#dbeafe">${SUB}</text>
</svg>
EOF

sips -s format png "$TMP" --out "$DIR/featured.png" >/dev/null
rm -f "$TMP"
echo "wrote $DIR/featured.png"
