#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ======================================
#  Oh My Tcsh - A Plugin Manager for Tcsh
#  Copyright 2026 Gordon Zhang
#  ======================================
#  File: src/omtInit.tcsh
#  Setup basic paths & values for OMT.
#  ======================================


# Set default paths
set _omtConfigFile = "~/.omtConfig.tcsh"
set _omtDir        = "~/.omt"
set _omtPluginsDir = "$_omtDir/plugins"
set _omtModulesDir = "$_omtDir/src"
set _omtThemesDir  = "$_omtDir/themes"


# Setup  aliases for OMT scripts
alias omtThemeLoad   "source $_omtModulesDir/omtThemeLoad.tcsh $omtTheme"
alias omtPluginLoad  "source $_omtModulesDir/omtPluginLoad.tcsh $omtPlugins"
alias omtSysInfoLoad "source $_omtModulesDir/omtSysInfo.tcsh"

# TODO pluginInstall script

