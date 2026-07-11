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


# ===================
# File: ohMyTcsh.tcsh
# ===================
# Main script for ohMyTcsh
# ========================



# Init
source ~/.omt/src/omtInit.tcsh # Many default variables are defined in it...



# Load Config file
if ( -f $_omtConfigFile ) then
	source $_omtConfigFile
endif


# TODO external plugin installation management


# OMT Modules Load
omtSysInfoLoad
omtThemeLoad
omtPluginLoad


if ($_omtColors) then
  # Enable coloured terminal outputs for ls, tree, etc
  setenv COLORTERM
  setenv LS_COLORS
endif


