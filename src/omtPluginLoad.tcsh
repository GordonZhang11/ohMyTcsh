#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =======================================
#  Oh My Tcsh - A Shell Framework for Tcsh
#  Copyright 2026 Gordon Zhang
#  =======================================
#  File:    src/omtPluginLoad.tcsh
#  Command: omtPluginLoad
#  Plugin Loader for OMT
#  =======================================


# Load plugin
foreach _plugin ( $omtPlugins )
  set _pluginEntry = "$_omtPluginsDir/$_plugin/plugin.tcsh"
  if ( -e "$_pluginEntry" ) then
    source "$_pluginEntry"

    if ( $status != 0 ) then
      echo "OMT WARNING: Plugin $_plugin Failed to load. (status=$status)."
    endif
  else
    echo "OMT WARNING: Plugin $_plugin not found, Skipping..."
  endif
end


unset _plugin _pluginEntry

