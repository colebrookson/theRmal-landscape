#!/usr/bin/env bash
set -euo pipefail

################################################################################
#  step 0 – config
################################################################################
MAX_SIZE_MB=49                # files ≥ this size get ignored
PUB_SRC="./figs/pub"
SI_SRC="./figs/si"
PUB_DEST="./man/figs/main"
SI_DEST="./man/figs/si"

################################################################################
#  step 1 – sync figures (your original logic)
################################################################################
mkdir -p "$PUB_DEST" "$SI_DEST"

sync_files () {
    local src=$1 dest=$2
    echo "Syncing $src  →  $dest"
    rsync -avu --delete --progress "$src/" "$dest/"
    echo "✔ done"
}

sync_files "$PUB_SRC" "$PUB_DEST"
sync_files "$SI_SRC" "$SI_DEST"

################################################################################
#  step 2 – auto-ignore blobs ≥ MAX_SIZE_MB
################################################################################
echo
echo "Scanning repo for files ≥ ${MAX_SIZE_MB} MB …"

# find every regular file bigger than MAX_SIZE_MB, skip .git itself, print NUL-separated
while IFS= read -r -d '' bigfile; do
    # strip leading “./” for nicer paths in .gitignore
    relpath=${bigfile#./}

    # already ignored?
    if grep -Fxq "$relpath" .gitignore 2>/dev/null; then
        echo "• $relpath (already in .gitignore)"
        continue
    fi

    echo "• $relpath  →  adding to .gitignore"
    echo "$relpath" >> .gitignore
done < <(find . -type f -size +"${MAX_SIZE_MB}"M \
              -not -path "./.git/*" -print0)

################################################################################
#  step 3 – remind the human
################################################################################
if git diff --quiet -- .gitignore; then
    echo "No new oversize files found. ✅"
else
    echo
    echo "Oversize files added to .gitignore."
    echo "If any were already committed you still need to stop tracking them:"
    echo "    git rm --cached <path> …  && git commit -m 'rm large blob'"
fi

echo "All done."
