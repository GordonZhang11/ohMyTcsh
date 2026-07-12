#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ===================================================
#  OMT Plugin gitStatus: Display git status in prompts
#  Copyright 2026 Gordon Zhang
#  ===================================================


if ( $?precmd ) then
  set _omtUserCmd = "$precmd"
  alias precmd "source $_omtPluginsDir/gitStatus/gitStatus.tcsh; $_omtUserCmd"
else
  alias precmd "source $_omtPluginsDir/gitStatus/gitStatus.tcsh"
endif

