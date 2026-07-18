#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause

#  =============================================
#  OMT Plugin prompts: Improved prompts for Tcsh
#  Copyright 2026 Gordon Zhang
#  =============================================


# Prompt: [CWD] >
if ($_omtColors) then
  set prompt = "${_omtColor1}%~${_reset} ${_omtColor2} >${_reset} "
else
  set prompt = "%~ >"
endif

