;;; init-company.el --- Auto complete using company -*- lexical-binding: t -*-
;;; Commentary:
;;  Installs and configures company
;;; Code:
(jlgre/require 'company)
(jlgre/require 'company-lsp)

(with-eval-after-load 'company
  (setq company-dabbrev-downcase 0)
  (define-key jlgre/map (kbd "C-z") 'company-complete))

;; Define a hook to disable company for certain modes
(defun jlgre/no-company ()
  (company-mode -1))

(add-hook 'after-init-hook 'global-company-mode)
(provide 'init-company)
;;; init-company.el ends here
