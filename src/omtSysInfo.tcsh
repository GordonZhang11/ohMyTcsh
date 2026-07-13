#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =======================================
#  Oh My Tcsh - A Shell Framework for Tcsh
#  Copyright 2026 Gordon Zhang
#  =======================================
#  File: src/omtSysInfo.tcsh
#  Provides platform information.
#  =======================================


# ------------
# OS Detection
# ------------
# Platform, expected *BSD, Darwin, Linux
if (! $?_omtOS ) then
  # Automatically detect system information only if 
  # the variable isn't already set.
  # Users are able to manually set these variables
  # in the OMT config file

  set _omtOS = `uname -s`

  # Set to unknown if detection failed.
  if ( $status != 0 )  set _omtOS = "Unknown"
endif


# Disable colors by default.
set _omtColors    = 0
set _omt256Colors = 0



set _tputTest = `which tput >& /dev/null`

if ( $status == 0 ) then
# --------------------------------
# Terminal Color Support Detection
# --------------------------------


  set _tputPath = `which tput`
  set _availColors = `$_tputPath colors`

  # If detection successful
  if ( $status == 0 ) then
    if ($_availColors >= 8) set _omtColors = 1
    if ($_availColors >= 256) set _omt256Colors = 1
  endif

# -----------------------------
# Terminal Dimensions Detection
# -----------------------------

  if (! $?_omtTermCols ) then
    set _omtTermCols = 80 # Default Value 80

    if ( $_tputPath != "" && -x $_tputPath ) then
      set _cols = `$_tputPath cols`
      if ( $status == 0 ) set _omtTermCols = $_cols
    endif
  endif

  if (! $?_omtTermRows ) then
    set _omtTermRows = 24 # Default Value 80

    if ( $_tputPath != "" && -x $_tputPath ) then
      set _lines = `$_tputPath lines`
      if ( $status == 0 ) set _omtTermRows = $_lines
    endif
  endif

  unset _tputPath _availColors _cols _lines
endif

