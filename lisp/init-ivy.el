;;; init-ivy.el --- Configures ivy to be nice -*- lexical-binding: t -*-
;;; Commentary:
;;  Enables ivy system-wide, adds some niceties
;;; Code:
(defvar jlgre/ivy-packages '(ivy counsel ivy-rich))
(dolist (package jlgre/ivy-packages)
  (jlgre/require package))

(define-key jlgre/map (kbd "/") 'counsel-grep)

(add-hook 'after-init-hook 'ivy-mode)
(add-hook 'ivy-mode-hook 'ivy-rich-mode)
(add-hook 'ivy-mode-hook 'counsel-mode)

(provide 'init-ivy)
;;; init-ivy.el ends here
