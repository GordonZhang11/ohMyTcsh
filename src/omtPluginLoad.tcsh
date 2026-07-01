#!/usr/bin/env tcsh


#  ======================================
#  Oh My Tcsh - A Plugin Manager for Tcsh
#  ======================================
#  Copyright 2026 Gordon Zhang
#  Licensed under the 3-Clause BSD License
#  =======================================

#  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


# ========================
# File: src/omtPluginLoad.tcsh
# ========================
# Plugin Loader for Tcsh
# ======================



# Get plugin name from args
set _plugins = $argv


# Load plugin
if ( $#_plugins == 1 ) then
	# If plugins set to be empty.
	# Load all plugins

	foreach _plugin  ($_pluginsDir/*)
		if (-e $_plugin/plugin.tcsh) then
			source $_plugin/plugin.tcsh
		endif
	end
else
	# If plugins specified
	# Load specified ones

	foreach _plugin ($_plugins)
        set _pluginEntry = $_pluginsDir/$_plugin/plugin.tcsh
		if (-e $_pluginEntry) then
            source $_pluginEntry
        endif
        # TODO: else plugin not found
	end
endif

