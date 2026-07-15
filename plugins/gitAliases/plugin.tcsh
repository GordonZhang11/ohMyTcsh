#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ==================================================
#  OMT Plugin Git omtAliases: Shortcuts for git commands
#  Copyright 2026 Gordon Zhang
#  ==================================================


# Core
omtAlias g    "git"
omtAlias gi   "git init"
omtAlias gst  "git status"
omtAlias gbr  "git branch"
omtAlias gd   "git diff"

# Staging & Committing
omtAlias ga   "git add"
omtAlias gaa  "git add --all"
omtAlias gcm  "git commit -m"
omtAlias gcam "git commit -a -m"

# Branching & Merging
omtAlias gco  "git checkout"
omtAlias gm   "git merge"
omtAlias gcl  "git clone"

# Remote Operations
omtAlias gp   "git push"
omtAlias gl   "git pull"
omtAlias gra  "git remote add"


# Temporary Storage
omtAlias gsh  "git stash"

