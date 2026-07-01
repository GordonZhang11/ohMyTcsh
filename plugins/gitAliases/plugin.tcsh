#!/usr/bin/env tcsh


#  ==================================================
#  OMT Plugin Git Aliases: Shortcuts for git commands
#  ==================================================
#  Copyright 2026 Gordon Zhang
#  Licensed under the 3-Clause BSD License
#  =======================================

#  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


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
