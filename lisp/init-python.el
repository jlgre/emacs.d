;;; init-python.el --- Set up python -*-lexical-binding: t -*-
;;; Commentary:
;;; Code:
(jlgre/require 'pyvenv)

(add-hook 'python-mode-hook #'lsp)

(provide 'init-python)
;;; init-python.el ends here
