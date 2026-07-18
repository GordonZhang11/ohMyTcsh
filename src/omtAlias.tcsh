#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =======================================
#  Oh My Tcsh - A Shell Framework for Tcsh
#  Copyright 2026 Gordon Zhang
#  =======================================
#  File: src/omtAlias.tcsh
#  Command: omtAlias
#  Safe aliasing without overridding.
#  =======================================


# Argument check
if ( $# < 2 ) then
    echo "OMT ERROR: Not enough arguments for omtAlias."
    return
endif


# Check if alias exists

set _aliasTest = ""
set _aliasTest = `alias $1`

if ( "$_aliasTest" == "" ) then
  alias $1 $2
endif

unset _aliasTest

