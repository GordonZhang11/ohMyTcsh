# SPDX-License-Identifier: BSD-3-Clause

if ( -d .git ) then
    set _gitBranch = `git branch --show-current`

    # Number of modified files
    set _modified = `git status -s | grep "M" -c`

    if ( $_modified == 0 ) then
        echo -n "Git <${_gitBranch}> "
    else
        echo -n "Git <${_gitBranch}> ($_modified) "
    endif
endif

unset _gitBranch _modified
