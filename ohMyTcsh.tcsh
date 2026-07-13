#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =======================================
#  Oh My Tcsh - A Shell Framework for Tcsh
#  Copyright 2026 Gordon Zhang
#  =======================================
#  File: ohMyTcsh.tcsh
#  Main script for ohMyTcsh
#  =======================================


# Init
set _omtInitFile = ~/.omt/src/omtInit.tcsh # Many default variables are defined in it...

if ( -f $_omtInitFile ) then
  source $_omtInitFile
  if ( $status != 0 ) then
    echo "OMT FATAL: Failed to init."
    return 1
  endif
else
  echo "OMT FATAL: Modules not found."
  return 1
endif


unset _omtInitFile


# Load Config file
if ( -f $_omtConfigFile ) then
	source $_omtConfigFile
endif


# TODO external plugin installation management


# OMT Modules Load
_omtSysInfoLoad
omtThemeLoad
omtPluginLoad


if ( $_omtColors ) then
  # Enable coloured terminal outputs for ls, tree, etc
  setenv COLORTERM
  setenv LS_COLORS
endif

