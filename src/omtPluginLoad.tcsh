#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  ======================================
#  Oh My Tcsh - A Plugin Manager for Tcsh
#  Copyright 2026 Gordon Zhang
#  ======================================
#  File:    src/omtPluginLoad.tcsh
#  Command: omtPluginLoad
#  Plugin Loader for OMT
#  ======================================


# Get plugin name from args
set _plugins = $argv


# Load plugin
foreach _plugin ( $_plugins )
  set _pluginEntry = $_omtPluginsDir/$_plugin/plugin.tcsh
  if ( -e $_pluginEntry ) then
    source $_pluginEntry
  else
    echo "OMT ERROR: Plugin $_plugin not found."
  endif
end
endif


unset _plugin _pluginEntry _plugins

