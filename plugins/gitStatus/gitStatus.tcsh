#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause


# Only run if inside a git work tree
git rev-parse --is-inside-work-tree >& /dev/null
if ( $status == 0 ) then
  # Get current branch (handles detached HEAD)
  set _gitBranch = `git rev-parse --abbrev-ref HEAD`

  if ( "$_gitBranch" == "HEAD" ) set _gitBranch = `git rev-parse --short HEAD`

  set _modified = `git diff --name-only --diff-filter=M | wc -l | tr -d ' '`

  if ( $_modified == 0 ) then
    echo -n "Git <${_gitBranch}> "
  else
    echo -n "Git <${_gitBranch}> ($_modified) "
  endif

  unset _gitBranch _modified
endif
