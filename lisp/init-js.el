;;; init-js.el --- Javascript support -*- lexical-binding: t -*-
;;; Commentary:
;;  Configures js2-mode, prettier, and rjsx-mode
;;; Code:
(defvar jlgre/js-packages '(js2-mode
			    prettier-js
			    rjsx-mode))

(dolist (pack jlgre/js-packages)
  (jlgre/require pack))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.component.js\\' . rjsx-mode"))

(defun jlgre/maybe-use-prettier ()
  "Enable prettier-js-mode if an rc file is located."
  (if (locate-dominating-file default-directory ".prettierrc.json")
      (prettier-js-mode +1)))

(add-hook 'js2-mode-hook 'jlgre/maybe-use-prettier)
(add-hook 'js2-mode-hook #'lsp)
(add-hook 'web-mode-hook 'jlgre/maybe-use-prettier)
(add-hook 'rjsx-mode-hook 'jlgre/maybe-use-prettier)
(add-hook 'rjsx-mode-hook #'lsp)

(provide 'init-js)
;;; init-js.el ends here
