#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ==================================================
#  OMT Plugin Aliases: Shortcuts for daily operations
#  Copyright 2026 Gordon Zhang
#  ==================================================


if ( "$_omtOS" == "Linux" ) then
  alias ls "ls --color=auto"
else
  alias ls "ls -G"
endif


alias tree "tree -C"


alias ll  "ls -lh"
alias la  "ls -alh"

alias ..  "cd .."
alias ... "cd ../.."

alias h   "history"

