#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

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


# =========================
# File: src/omtSysInfo.tcsh
# =========================
# Provides platform information.
# ==============================


# ------------
# OS Detection
# ------------
# Platform, expected *BSD, Darwin, Linux
if ($?_omtOS == 0) then
  # Automatically detect system information only if 
  # the variable isn;t already set.
  # Users are able to manually set these variables
  # in the OMT config file

  set _omtOS = `uname -s`

  # Set to unknown if detection failed.
  if ($status != 0)  set _omtOS = "Unknown"
endif

if (-x /usr/bin/tput || -x /bin/tput) then # `tput` for term info

  # --------------------------------
  # Terminal Color Support Detection
  # --------------------------------
  set _omtColors    = 0
  set _omt256Colors = 0

  set _tputPath = `which tput`

  if ($?_tputPath && -x $_tputPath) then

    set _availColors = `$_tputPath colors`

    # If detection successful
    if ($status == 0) then
      if ($_availColors >= 8) set _omtColors = 1
      if ($_availColors >= 256) set _omt256Colors = 1
      endif
    endif
  endif

  # -----------------------------
  # Terminal Dimensions Detection
  # -----------------------------
  
  if ( $?omtTermCols == 0 ) then
    set _omtTermCols = 80 # Default Value 80

    if ( $?_tputPath && -x $_tputPath ) then
      set _cols = `$_tputPath cols`
      if ( $status == 0 && ) set _omtTermCols = $_cols
    endif
  endif

  if ( $?omtTermRows == 0 ) then
    set _omtTermRows = 80 # Default Value 80

    if ( $?_tputPath && -x $_tputPath ) then
      set _lines = `$_tputPath cols`
      if ( $status == 0 ) set _omtTermRows = $_lines
    endif
  endif
endif


unset _tputPath _availColors _cols _lines

