#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ==================================================
#  OMT Plugin Git Aliases: Shortcuts for git commands
#  Copyright 2026 Gordon Zhang
#  ==================================================


# Core
alias g    "git"
alias gi   "git init"
alias gst  "git status"
alias gbr  "git branch"
alias gd   "git diff"

# Staging & Committing
alias ga   "git add"
alias gaa  "git add *"
alias gcm  "git commit -m"
alias gcam "git commit -a -m"

# Branching & Merging
alias gco  "git checkout"
alias gm   "git merge"
alias gcl  "git clone"

# Remote Operations
alias gp   "git push"
alias gl   "git pull"
alias gra  "git remote add"


# Temporary Storage
alias gsh  "git stash"
