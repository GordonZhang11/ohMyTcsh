set omtReleaseFile = $_omtDir/RELEASE

set _version = unknown # Default value Unknown
if (-f $omtReleaseFile) set _version = `cat $omtReleaseFile`


echo "Oh My Tcsh ( Version $_version, on $_omtPlatform )"
echo "Copyright (c) 2026 Gordon Zhang. "
echo "Licensed under the 3-Clause BSD License"

unset _version omtReleaseFile

