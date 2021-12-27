# DOT FILES

these are my dot files

documentation needs much much much work

I use chezmoi to manage all of this, big reccomend it

## Application List

### Applications and why I use them

|Software Name| What it is | Why I use it | Where I use it|
--- | --- | --- | ---
|chezmoi|A script and configuration management system| It has a ton of support for nice stuff like zsh autocomplete, templating based off system variables, and permissions persistence of configs | both|
|golang|A programming language, like modern version of C| I have alot of thoughts about it but overall its pretty cool | both|
|rust| A programming language, memory safety with ***SPEEEEEDDD***| Its cool for things| both|
|ruby|A programming language|I inherited a bunch of ruby projects| both|
|rbenv|A ruby version manager|I like the API better than rvm | both|
|asdf|A version manager for a ton of programming languages| asdf supports a ton of languages like elixir and ruby| both|
|zsh|A shell| Overall it has alot of nice features that bash doesnt have like autocomplete, nicer history, spell check | both|
|doom emacs|A theme engine ontop of emacs, a configurable lisp machine| Vim bindings, easy configuration, nice lsp support, do I really need to go on?| both|
|neovim|A text editor based off of vim| Its faster, has more configurable plugins and settings, more extensible, overall wayy better than vim | both|
|redshift|A screen temperature changing| It has nice hooks to run commands based on time of day(like changinge wallpaper)| Currently only laptop|
|i3|A window manager| I only use this on my laptop because at the time, it was the best. Now on my desktop I use COSMIC with pop os(maybe will change) | laptop|
|polybar|A bar for your desktop, think toolbar on windows|I only use this on my laptop to use with i3 | laptop|
|alacritty| A terminal emulator| Its fast and configurable, has a cool vim mode| desktop|

### Requirements
* alacritty
* zsh
* emacs
* doom emacs
* neovim
* rbenv
* asdf manager
* ruby
* golang over 1.16
* latest stable rust
* vim plug for neovim

**LAPTOP ONLY**
* i3(only if on my laptop)
* polybar(same as above)

**PACKAGE MANAGERS**
* cargo
* yarn
* pip

**BUILD TOOLS**
* CMAKE
* rustc
* make

**FONTS**
* [Ubuntu Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip)
* [Fira Code](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip)
* [Twitter emoji](https://github.com/eosrei/twemoji-color-font)

### Nice to haves

* redshift(for wallpaper changing)
* feh

### What I dont use anymore

|Software Name | What its used for | Why I dont use it|
--- | --- | ---
|Termite|A terminal emulator|Its deprecated so i switched to alacritty|
|Vim|A text editor| For basic text editor stuff there is an alternative that is better(Neovim)|
|Emacs|A text editor/lisp engine| Doom emacs is just better for my purposes, I need vim bindings and ease of use|


## Setup

you need to install chezmoi first so uh do that

I will eventually write a guide on how to install start to finish

### Clone

```
$ chezmoi init https://github.com/prairir/dot_files.git
```

## Adding files

```
$ chezmoi add <File Name>

$ chezmoi git add .

$ chezmoi git commit
```

## Executing and testing templates

```
$ cat <Template Name> | chezmoi execute-template
```

## Changing directory to chezmoi

```
$ chezmoi cd
```

## Editing files

```
$ chezmoi edit <File Name>
```

or if you want to list directory(if your editor supports it)

```
$ chezmoi edit
```

## Updating changes to my git repo

```
$ chezmoi git push
```

## Apply changes

```
$ chezmoi apply
```

~~you have to use sudo cause some things require big boi perms~~
i fixed the perms issue


## TODO

* Fix polybar scripts to use modules instead

* Add other smart-tabs language support for used langs

* Figure out variables for configs

* Add reallllllllly old dot files like tmux, vim, old weird scripts, etc
