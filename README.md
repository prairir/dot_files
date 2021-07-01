# DOT FILES

these are my dot files

documentation needs much much much work

I use chezmoi to manage all of this, big reccomend it

## Application List

### Requirements
* golang over 1.16
* zsh
* emacs
* doom emacs
* neovim

### Nice to haves

* asdf manager
* redshift(for wallpaper changing)


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
