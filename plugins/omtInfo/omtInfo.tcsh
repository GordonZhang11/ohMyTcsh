#!/usr/bin/env tcsh

# SPDX-License-Identifier: BSD-3-Clause


set _omtReleaseFile = $_omtDir/RELEASE

set _version = unknown # Default value Unknown
if ( -f $_omtReleaseFile ) set _version = `cat $_omtReleaseFile`

set _tcshInfo = `tcsh --version`


echo "Oh My Tcsh ( Version $_version, on $_omtOS )"
echo "Copyright (c) 2026 Gordon Zhang. "
echo "Licensed under the 3-Clause BSD License"

echo
echo "Directory: $_omtDir"

echo
echo "Plugins: $omtPlugins"
echo "Themes : $omtTheme"

echo
echo -n "Tcsh: "
echo $_tcshInfo


unset _version _omtReleaseFile _tcshInfo



