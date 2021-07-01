# DOT FILES

these are my dot files

documentation needs much much much work

I use chezmoi to manage all of this, big reccomend it

## Application List

### Applications and why I use them

|Software Name| What it is | why I use it|
|chezmoi|A script and configuration management system| It has a ton of support for nice stuff like zsh autocomplete, templating based off system variables, and permissions persistence of configs|
|golang|A programming language, like modern version of C| I have alot of thoughts about it but overall its pretty cool|
|zsh|A shell| Overall it has alot of nice features that bash doesnt have like autocomplete, nicer history, spell check|
|doom emacs|A theme engine ontop of emacs, a configurable lisp machine| Vim bindings, easy configuration, nice lsp support, do I really need to go on?|
|neovim|A text editor based off of vim| Its faster, has more configurable plugins and settings, more extensible, overall wayy better than vim|
|rbenv|A ruby version manager|I like the API better than rvm|
|ruby|A programming language|I inherited a bunch of ruby projects|
|asdf|A version manager for a ton of programming languages| asdf supports a ton of languages like elixir and ruby|
|redshift|A screen temperature changing| It has nice hooks to run commands based on time of day(like changinge wallpaper)|
|i3|A window manager| I only use this on my laptop because at the time, it was the best. Now on my desktop I use COSMIC with pop os(maybe will change)|
|polybar|A bar for your desktop, think toolbar on windows|I only use this on my laptop to use with i3|

### Requirements
* golang over 1.16
* zsh
* emacs
* doom emacs
* neovim
* rbenv
* ruby
* asdf manager

* i3(only if on my laptop)
* polybar(same as above)

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

* Add fonts to this

* Add reallllllllly old dot files like tmux, vim, old weird scripts, etc
