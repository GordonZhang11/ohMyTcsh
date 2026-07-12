# Oh My Tcsh

## A minimal, self-contained framework for Tcsh

## Introduction

TENEX C Shell ( `tcsh` ) is used across Various UNIX / Linux systems.
Although it is no longer widely used on modern platforms,
it continues to be an important choice on many legacy systems.

Oh My Tcsh ( OMT ) is designed to bridge the gap and
**improve the experience of the legacy systems**.

With batteries included, OMT helps the legacy Tcsh users **improve their
interactive shell experience**, using the minimum amount of resources.
It is not an attempt to make `tcsh` another Zsh or Fish,
but rather to empower the classic shell it already is.

## Dependencies

- Generic BSD / Darwin / Linux

  Developed & Tested on:

```
FreeBSD 15.1-RELEASE-p1 GENERIC amd64
```

- Tcsh
  Developed & Tested on:

```
tcsh 6.22.04 (Astron) 2021-04-26 (x86_64-amd-FreeBSD) options wide,nls,dl,al,kan,sm,rh,color,filec
```

## Installation

- Clone into `~/.omt/`

```Shell
git clone https://codeberg.org/gzh/ohMyTcsh.git ~/.omt/
```

- Edit `.tcshrc`

```shell
# Set as required
set omtPlugins = ( aliases gitStatus prompt gitAliases omtInfo safeFileOperations )
set omtTheme   = "default"

# OMT Load
source ~/.omt/ohMyTcsh.tcsh
```

Or copy `.sample.tcshrc` to `~/.tcshrc` as required.

## Available Plugins

| Plugin               | Description                       |
| -------------------- | --------------------------------- |
| `aliases`            | Shortcuts for daily operations    |
| `gitAliases`         | Shortcuts for common git commands |
| `gitStatus`          | Git status display in the prompt  |
| `omtInfo`            | OMT Information                   |
| `prompt`             | Prompt Display                    |
| `safeFileOperations` | `rm` `mv` `cp` safer aliases      |

## Note on Tcsh Scripting

Tcsh is one of the many "legacy" shells for UNIX systems.

However, it is not an ideal language for shell scripting.

For information about Tcsh / Csh shell programming,
please read [Csh Programming Considered Harmful](http://www.faqs.org/faqs/unix-faq/shell/csh-whynot/)

Despite Tcsh is not a good shell programming language,
the interactive Tcsh Shell is still used in a few scenarios.

OMT is designed to enhance the **interactive shell experience**,
not to encourage complex scripting in Tcsh.

Refer to [Tcsh FAQ](https://www.tcsh.org/faq/) for more information.

## Copyright Information

Copyright (c) 2026 Gordon Zhang.
Licensed under the 3-Clause BSD License
