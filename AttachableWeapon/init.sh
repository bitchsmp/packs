#!/bin/sh

# Get the directory of this script (absolute path)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Source file
SOURCE="$SCRIPT_DIR/stats.yml"

# Destination = MythicMobs (2 levels up)
DEST="$(cd "$SCRIPT_DIR/../.." && pwd)"

echo "Source: $SOURCE"
echo "Destination: $DEST"

if [ ! -f "$SOURCE" ]; then
  echo "ERROR: stats.yml not found."
  exit 1
fi

cp -f "$SOURCE" "$DEST/stats.yml"

if [ $? -ne 0 ]; then
  echo "ERROR: Copy failed."
  exit 1
else
  echo "SUCCESS: stats.yml copied to $DEST"
fi
