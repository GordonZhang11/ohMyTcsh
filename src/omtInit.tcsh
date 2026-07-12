#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =======================================
#  Oh My Tcsh - A Shell Framework for Tcsh
#  Copyright 2026 Gordon Zhang
#  =======================================
#  File: src/omtInit.tcsh
#  Setup basic paths & values for OMT.
#  =======================================


# Set default paths
set _omtConfigFile = ~/.omtConfig.tcsh
set _omtDir        = ~/.omt
set _omtPluginsDir = $_omtDir/plugins
set _omtModulesDir = $_omtDir/src
set _omtThemesDir  = $_omtDir/themes


# Setup  aliases / commands  for OMT scripts
#
# DO NOT CHANGE: The load sequence shouldn't be changed.
#
alias omtThemeLoad   "source $_omtModulesDir/omtThemeLoad.tcsh"
alias omtPluginLoad  "source $_omtModulesDir/omtPluginLoad.tcsh"
alias omtSysInfoLoad "source $_omtModulesDir/omtSysInfo.tcsh"

# TODO pluginInstall script

