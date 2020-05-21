;;; init-projectile.el --- Projectile for project management
;;; Commentary:
;;  Configures projectile
;;; Code:
(defvar jlgre/projectile-packages '(projectile counsel-projectile))
(dolist (package jlgre/projectile-packages)
  (jlgre/require package))

(with-eval-after-load 'projectile
  (define-key jlgre/map (kbd "p") 'projectile-command-map))

(add-hook 'after-init-hook 'projectile-mode)
(add-hook 'after-init-hook 'counsel-projectile-mode)

(provide 'init-projectile)
;;; init-projectile.el ends here
