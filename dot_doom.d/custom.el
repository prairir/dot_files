(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine 'xetex)
 '(ignored-local-variable-values
   '((eval add-to-list 'imenu-generic-expression
      `(nil
        "\\s(\\(?:defn-?\\|fn\\*\\)[[:space:]]+\\(\\(?:\\sw\\|\\s_\\|-\\|_\\)+\\)"
        1))
     (eval font-lock-add-keywords 'fennel-mode
      '(("\\s(\\(?:defn-?\\|fn\\*\\)[[:space:]]+\\(\\(?:\\sw\\|\\s_\\|-\\|_\\)+\\)"
         1 'font-lock-function-name-face)))
     (eval font-lock-add-keywords 'fennel-mode
      '(("\\<\\(?:cond\\|def\\(?:m\\(?:ethod\\|ulti\\)\\|n-?\\|protocol\\)?\\|extend-protocol\\|fn\\*\\|i\\(?:f-\\(?:let\\|some\\)\\|n-ns\\)\\|l\\(?:azy-\\(?:cat\\|seq\\)\\|oop\\)\\|ns\\|reify\\|t\\(?:ime\\|ry\\)\\|when-\\(?:let\\|some\\)\\)\\>"
         quote font-lock-keyword-face)))
     (eval put 'defprotocol 'fennel-doc-string-elt 2)
     (eval put 'defprotocol 'fennel-indent-function 1)
     (eval put 'defmethod 'fennel-doc-string-elt 2)
     (eval put 'defmethod 'fennel-indent-function 2)
     (eval put 'defmulti 'fennel-indent-function 'defun)
     (eval put 'when-some 'fennel-indent-function 1)
     (eval put 'if-some 'fennel-indent-function 1)
     (eval put 'when-let 'fennel-indent-function 1)
     (eval put 'if-let 'fennel-indent-function 1)
     (eval put 'fn* 'fennel-doc-string-elt 2)
     (eval put 'fn* 'fennel-indent-function 'defun)
     (eval put 'defn- 'fennel-doc-string-elt 2)
     (eval put 'defn- 'fennel-indent-function 'defun)
     (eval put 'defn 'fennel-doc-string-elt 2)
     (eval put 'defn 'fennel-indent-function 'defun)
     (eval put 'def 'fennel-indent-function 'defun)
     (eval put 'ns 'fennel-indent-function 1)
     (eval put 'ns 'fennel-doc-string-elt 2)))
 '(package-selected-packages '(casual-suite)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
