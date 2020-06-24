;;; init-lsp.el --- LSP support for autocomplete -*- lexical-binding: t -*-
;;; Commentary:
;;  Add support for LSP
;;; Code:
(jlgre/require 'lsp-mode)

(with-eval-after-load 'lsp-mode
  (setq lsp-signature-auto-activate nil)
  (define-key jlgre/map (kbd "l") lsp-command-map))

(defvar jlgre/lsp-langs '(python-mode-hook
			  c-mode-hook
			  js2-mode-hook
			  java-mode-hook
			  php-mode-hook))

(dolist (lang jlgre/lsp-langs)
  (add-hook lang #'lsp))

(add-hook 'lsp-mode 'lsp-enable-which-key-integration)

(provide 'init-lsp)
;;; init-lsp.el ends here
