;;; init-projectile.el --- Projectile for project management -*- lexical-binding: t -*-
;;; Commentary:
;;  Configures projectile
;;; Code:
(defvar jlgre/projectile-packages '(projectile counsel-projectile))
(dolist (package jlgre/projectile-packages)
  (jlgre/require package))

(with-eval-after-load 'projectile
  (counsel-projectile-modify-action
   'counsel-projectile-switch-project-action
   '((default counsel-projectile-switch-project-action-vc)))
  (general-define-key
   :states 'normal
   :keymaps 'override
   :prefix "SPC"
   "p" 'projectile-command-map
   "*" 'projectile-ripgrep))

(add-hook 'after-init-hook 'projectile-mode)
(add-hook 'after-init-hook 'counsel-projectile-mode)

(provide 'init-projectile)
;;; init-projectile.el ends here
