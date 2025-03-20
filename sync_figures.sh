#!/bin/bash

# this moves all new/modified figure files over to the manuscript folder as
# well so that they're synced up 

# Source and destination directories
PUB_SRC="./figs/pub"
SI_SRC="./figs/si"
PUB_DEST="./man/figs/main"
SI_DEST="./man/figs/si"

# Ensure destination directories exist
mkdir -p "$PUB_DEST"
mkdir -p "$SI_DEST"

# Function to sync files (including deletions)
sync_files() {
    local src=$1
    local dest=$2

    echo "Syncing files from $src to $dest..."

    # rsync options:
    # -a  : Preserve attributes (timestamps, permissions, symbolic links, etc.)
    # -v  : Verbose output (shows files being copied/removed)
    # -u  : Only update newer files
    # --delete : Removes files in destination if they are missing in the source
    rsync -avu --delete --progress "$src/" "$dest/"

    echo "Sync complete for $src -> $dest."
}

# Sync files for both pub and si directories
sync_files "$PUB_SRC" "$PUB_DEST"
sync_files "$SI_SRC" "$SI_DEST"

echo "All directories are now in sync."

