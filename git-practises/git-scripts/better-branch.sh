#!/usr/bin/env bash

# ----------------------------------------------------------------------
# better-branch.sh
#
# Lists all local branches in a 4‐column, color‐coded format:
#   [Ahead] [Behind] [Branch] [Last Commit]
#
# Usage: better-branch.sh
#
# ----------------------------------------------------------------------

# 1) Define ANSI color codes
GREEN="\033[0;32m"    # for "Ahead"
RED="\033[0;31m"      # for "Behind"
BLUE="\033[0;34m"     # for "Branch"
YELLOW="\033[0;33m"   # for "Last Commit"
NC="\033[0m"          # no color (reset)

# 2) Column widths (you can tweak these if you have very long branch names)
#    - AHEAD column: 5 characters
#    - BEHIND column: 6 characters
#    - BRANCH column: 20 characters (left‐justified)
#    - LAST COMMIT: unbounded (we let it flow)
WIDTH_AHEAD=5
WIDTH_BEHIND=6
WIDTH_BRANCH=20

# 3) Print the header row
printf "${GREEN}%${WIDTH_AHEAD}s ${RED}%${WIDTH_BEHIND}s ${BLUE}%-${WIDTH_BRANCH}s ${YELLOW}%s${NC}\n" \
  "Ahead" "Behind" "Branch" "Last Commit"

# 4) Print a separator line of dashes, matching each column width
printf "${GREEN}%${WIDTH_AHEAD}s ${RED}%${WIDTH_BEHIND}s ${BLUE}%-${WIDTH_BRANCH}s ${YELLOW}%s${NC}\n" \
  "$(printf '%.0s-' $(seq 1 ${WIDTH_AHEAD}))" \
  "$(printf '%.0s-' $(seq 1 ${WIDTH_BEHIND}))" \
  "$(printf '%.0s-' $(seq 1 ${WIDTH_BRANCH}))" \
  "$(printf '%.0s-' $(seq 1 16))"    # we choose 16 dashes for the "Last Commit" separator, but you can lengthen if desired

# 5) Loop over each local branch
#
#    We use `git for-each-ref --format='%(refname:short)' refs/heads/` to get a clean list of branch names.
#
git for-each-ref --format='%(refname:short)' refs/heads/ |
while read -r branch; do
  # 5a) Determine if this branch has an upstream.  If not, we will show "0" ahead/behind.
  upstream=$(git rev-parse --abbrev-ref "${branch}@{upstream}" 2>/dev/null)

  if [ -n "$upstream" ]; then
    # Count how many commits this branch is ahead/behind its upstream
    #    --left-right: show commits unique to each side
    #    --count: just count them
    #
    counts=$(git rev-list --left-right --count "${upstream}...${branch}" 2>/dev/null)
    # counts looks like: "<#behind> <#ahead>"
    behind=$(echo "$counts" | awk '{print $1}')
    ahead=$(echo "$counts" | awk '{print $2}')
  else
    ahead=0
    behind=0
  fi

  # 5b) Grab the last commit on that branch (short hash + subject)
  last_commit=$(git log -1 --format='%h %s' "$branch")

  # 5c) Print each row, padded to our column widths.  We left‐justify BRANCH to WIDTH_BRANCH,
  #     but right‐justify AHEAD/B EHIND to their respective widths so numbers line up.
  printf "${GREEN}%${WIDTH_AHEAD}s ${RED}%${WIDTH_BEHIND}s ${BLUE}%-${WIDTH_BRANCH}s ${YELLOW}%s${NC}\n" \
    "$ahead" "$behind" "$branch" "$last_commit"
done
