;;; init-lsp.el --- LSP support for autocomplete -*- lexical-binding: t -*-
;;; Commentary:
;;  Add support for LSP
;;; Code:
(jlgre/require 'lsp-mode)

(with-eval-after-load 'lsp-mode
  (setq lsp-signature-auto-activate nil)
  (general-define-key
   :states 'normal
   :prefix "SPC"
   "l" 'lsp-command-map))

(add-hook 'lsp-mode 'lsp-enable-which-key-integration)

(provide 'init-lsp)
;;; init-lsp.el ends here
