;;; init-treemacs.el --- A file explorer -*-lexical-binding: t-*-
;;; Commentary:
;;  Installs and configures treemacs
;;; Code:
(defvar jlgre/treepacks '(treemacs
			  treemacs-evil
			  treemacs-projectile
			  treemacs-magit))

(dolist (package jlgre/treepacks)
  (jlgre/require package))

(general-define-key
 :states 'normal
 :keymaps 'override
 :prefix "SPC"
 "ft" 'treemacs)

(provide 'init-treemacs)
;;; init-treemacs.el ends here
