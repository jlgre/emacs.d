;;; init-markdown.el --- Markdown configuration -*- lexical-binding: t -*-
;;; Commentary:
;;  Installs and configures markdown mode
;;; Code:
(jlgre/require 'markdown-mode)

(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(provide 'init-markdown)
;;; init-markdown.el ends here
