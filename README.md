# DOT FILES

these are my dot files

documentation needs much much much work

I use chezmoi to manage all of this, big reccomend it

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

## Updating changes to my git repo

```
$ chezmoi git push
```

## Apply changes

```
$ sudo chezmoi apply
```

you have to use sudo cause some things require big boi perms


## TODO

* Fix polybar scripts to use modules instead

* Figure out variables for configs

* Standardize and list down actual system requirements

* Add fonts to this

* Add reallllllllly old dot files like tmux, vim, old weird scripts, etc
