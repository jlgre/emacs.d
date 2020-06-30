;;; init-evil.el --- Evil customizations
;;; Commentary:
;;  Installs evil and some nicities
;;; Code:
(defvar jlgre/evil-packages '(evil
			      evil-collection
			      evil-magit))

(setq evil-want-keybinding nil)

(dolist (package jlgre/evil-packages)
  (jlgre/require package))

(evil-mode 1)
(evil-collection-init)
(setq evil-magit-state 'normal)

(provide 'init-evil)
;;; init-evil.el ends here
