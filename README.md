# Oh My Tcsh

A lightweight, self-contained plugin manager for the TENEX C Shell (tcsh).
It provides a standardized, modular architecture for

- extending shell functionality
- managing environment variables
- organizing command aliases.
- ...

## Introduction

TENEX C Shell (tcsh) is used across various Unix/Linux systems.
Whilst it is not widely used on modern platforms,
it continues to be an important choice on many legacy systems.

Unlike modern shells (Zsh, Fish, ...),
Tcsh lacks a native, widely-adopted plugin infrastructure.
OMT bridges the gap by providing
**a simple, self-contained system**
**to install, load, and manage plugins** without the headache.

## Batteries included

**OMT comes with a few plugins by default:**

| Plugin               | Description                       |
| -------------------- | --------------------------------- |
| `aliases`            | Shortcuts for daily operations    |
| `gitAliases`         | Shortcuts for common git commands |
| `gitStatus`          | Git status display in the prompt  |
| `prompt`             | Fancy prompts                     |
| `safeFileOperations` | `rm` `mv` `cp` safe aliasing      |

TODO: Theming Support

## Dependencies

- Generic Unix / Linux systems.
  Developed on
  `FreeBSD 15.1-RELEASE-p1 GENERIC amd64`

- Tcsh.
  Developed on:
  `tcsh 6.22.04 (Astron) 2021-04-26 (x86_64-amd-FreeBSD) options wide,nls,dl,al,kan,sm,rh,color,filec`

## Installation

- Clone this repository into `~/.omt/`

```Shell
git clone https://codeberg.org/gzh/ohMyTcsh.git ~/.omt/
```

- Edit `.tcshrc`

```shell
source ~/.omt/ohMyTcsh.tcsh
```

---

## More to Read

### Is Tcsh the "right" shell for me ?

Refer to [Tcsh FAQ](https://www.tcsh.org/faq/) for information about Tcsh.

Completely new to C Shell ? You can probably read:
[Csh Programming Considered Harmful](http://www.faqs.org/faqs/unix-faq/shell/csh-whynot/)
by Tom Christiansen.

Tcsh, (as well as the original C Shell),
is considered as one of the many "legacy" shell programs for Unix systems.
Tcsh offers (yep, not "offered") an exceptional interactive experience for
Unix system admins.
In fact, it still remains to be a "reasonable" choice for modern
Unix & Linux interactive shells.

However, when the scenario becomes **script programming**,
things start to become "complex".
It 's fragile syntax parsing, lack of advanced scripting features and poor portability
makes it almost something "anti-human" for shell scripting.

Details of its disadvantages are already explained in the article above.

If you are still attracted by Tcsh 's C-like syntax (That's a nice thing indeed...),
you can probably try writing a plugin for OMT.
Then, you will start to meet the true problems.

### Conclusion

Simple ...

Tcsh is:

- a reasonable choice for interactive shells.

Whilst Tcsh is not recommended for:

- Shell programming

### And, finally, the project code of conduct ...

(As already mentioned) Oh My Tcsh is here to
fill the massive ecosystem gap of Tcsh.

... In order to improve the user experience of this legacy, classic Unix shell.

... & Empower legacy systems.

Whilst... it's not to "Make Tcsh another Zsh / Fish" !

Writing Oh My Tcsh (i.e. Tcsh programming) is not an easy task.
The "blood & tears" experience of Tcsh programming
has also inspired me to write down the...

#### Coding guidelines

- Oh My Tcsh is a **simple and lightweight** plugin manager.
  We are not trying to make it "complex & versatile"

If "you" would like to have more "advanced features",
please, use modern shells (i.e. Zsh, Fish, ...)

- Contributions are welcomed. However, remember to avoid "big tasks"

> ... Easiness, joy ...
>
> ... Too much Tcsh, less joy ...
