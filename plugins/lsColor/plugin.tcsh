#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ==================================================
#  OMT Plugin lscolor: Coloured outputs for ls & tree
#  Copyright 2026 Gordon Zhang
#  ==================================================


if ( $_omtColors ) then
  if ( "$_omtOS" == "Linux" ) then
    alias ls "ls --color=auto"
  else
    alias ls "ls -G"
  endif

  alias tree "tree -C"
endif

