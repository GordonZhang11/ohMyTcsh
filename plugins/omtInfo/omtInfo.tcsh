# SPDX-License-Identifier: BSD-3-Clause

set _omtReleaseFile = $_omtDir/RELEASE

set _version = unknown # Default value Unknown
if ( -f $_omtReleaseFile ) set _version = `cat $_omtReleaseFile`


echo "Oh My Tcsh ( Version $_version, on $_omtOS )"
echo "Copyright (c) 2026 Gordon Zhang. "
echo "Licensed under the 3-Clause BSD License"

unset _version _omtReleaseFile

