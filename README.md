# Oh My Tcsh!


A lightweight, self-contained plugin manager for the TENEX C Shell (tcsh).
It provides a standardized, modular architecture for extending shell functionality, managing environment variables, and organizing command aliases.


## Introduction
TENEX C Shell (tcsh) is used across various Unix/Linux systems. Whilst it is not widely used on modern platforms, it continues to be an important choice on many legacy systems. Its C-like syntax also attracts some modern users.

Unlike modern shells (Zsh, Fish, ...), Tcsh lacks a native, widely-adopted plugin infrastructure. OMT bridges the gap by providing **a simple, self-contained system to install, load, and manage plugins** without the headache.


## Dependencies
- General Unix / Linux systems.
Developed on
`FreeBSD 15.1-RELEASE-p1 GENERIC amd64`


- Tcsh.
Developed on:
`tcsh 6.22.04 (Astron) 2021-04-26 (x86_64-amd-FreeBSD) options wide,nls,dl,al,kan,sm,rh,color,filec`


## Installation

- Clone this repository into `~/.omt/`

```Shell
$ git clone https://codeberg.org/gzh/ohMyTcsh.git ~/.omt/
```

- Edit `.tcshrc`

```shell
source ~/.omt/ohMyTcsh.tcsh
```


