#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =======================================
#  Oh My Tcsh - A Shell Framework for Tcsh
#  Copyright 2026 Gordon Zhang
#  =======================================
#  File:    src/omtThemeLoad.tcsh
#  Command: omtThemeLoad
#  Theme loader for OMT
#  =======================================


# Set Default theme valuables.
# in case that theme failed to load.
set _omtColor1 = ""
set _omtColor2 = ""
set _omtColor3 = ""


# Get theme name from args
set _theme = $omtTheme

if (! $?_theme ) then
  return 0
endif

set _themeConfigFile = "$_omtThemesDir/$_theme.tcsh"

if ( -f "$_themeConfigFile" ) then
  source "$_themeConfigFile"

  if ( $status != 0 ) then
    echo "OMT WARNING: Theme $_theme failed to load."
  endif
else
  echo "OMT WARNING: Theme $_theme not found."
  return 0
endif


# Colour reset symbol
set _reset = "%{\033[0m%}"


unset _theme

