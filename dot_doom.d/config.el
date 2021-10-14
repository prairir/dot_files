;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!



;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ryan Prairie"
      user-mail-address "me@ryanprairie.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;fonts and themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 22)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font" :size 22))

;; font for emojis
(set-fontset-font t 'symbol "Twitter Color Emoji" nil 'append)


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-material)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;splash customization
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; sets a custom splash photo
;; takes file path
(setq +doom-dashboard-banner-file
      (expand-file-name "splash/blackhole.svg" doom-private-dir))

;; sets splash photo padding
;; format is (<top> . <bottom>)
(setq +doom-dashboard-banner-padding '(1 . 2))

;; remove footer & 'loaded' information
;; functions to be ran when dash loads
;; hi
(setq +doom-dashboard-functions
      '(doom-dashboard-widget-banner
        doom-dashboard-widget-shortmenu))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').

;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; rbenv stuff
(setq rbenv-installation-dir "/home/ryan/.rbenv")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CENTAUR TABS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(evil-define-key 'normal centaur-tabs-mode-map (kbd "g <right>") 'centaur-tabs-forward        ; default Doom binding is 'g t'
                                               (kbd "g <left>")  'centaur-tabs-backward       ; default Doom binding is 'g T'
                                               (kbd "g <down>")  'centaur-tabs-forward-group
                                               (kbd "g <up>")    'centaur-tabs-backward-group)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; INDENT TABS STUFF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; this is basically a rip from https://dougie.io/emacs/indentation/
;; i took what i liked and changed what i didn't


;; custom tab width
(setq custom-tab-width 2)
(setq custom-tab-width-alt 4)

;; Two callable functions for enabling/disabling tabs in Emacs
(defun disable-tabs () (setq indent-tabs-mode nil))
(defun enable-tabs  ()
  (local-set-key (kbd "TAB") 'tab-to-tab-stop)
  (setq indent-tabs-mode t)
  (setq tab-width custom-tab-width))

;; Hooks to Enable Tabs
(add-hook 'prog-mode-hook 'enable-tabs)

;; Hooks to Disable Tabs
(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode-hook 'disable-tabs)

;; Language-Specific Tweaks
(setq-default python-indent-offset custom-tab-width-alt) ;; Python

;; js acts weird with indents
(setq-default js2-basic-offset custom-tab-width)
(setq-default js-indent-level custom-tab-width)

;; for web indentation
;;(setq web-mode-markup-indent-offset 4)
;;(setq web-mode-css-indent-offset 4)
;;(setq web-mode-code-indent-offset 4)
(setq web-mode-script-padding custom-tab-width)

;; c tab size
(setq-default c-basic-offset custom-tab-width)

;; Making electric-indent behave sanely
(setq-default electric-indent-inhibit t)

;; Make the backspace properly erase the tab instead of
;; removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)

;; for '>>' or '<<' with custom tab widths
(setq-default evil-shift-width custom-tab-width)

;; smart tabs
;;(smart-tabs-insinuate 'c 'javascript 'python 'elixir 'go)
(smart-tabs-insinuate 'c 'javascript 'python )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emojis stuff
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook #'global-emojify-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; modeline stuff
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; if the column is smaller then cut some stuff off
(setq doom-modeline-window-width-limit fill-column)

;; set the file type
(setq doom-modeline-buffer-file-name-style 'relative-to-project)

;; projectile config
(setq projectile-project-search-path '("~/dev/" "~/uni/" "~/.local/share/chezmoi"))

;;; config.el ends here
