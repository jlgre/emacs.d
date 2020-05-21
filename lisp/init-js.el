;;; init-js.el --- Javascript support -*- lexical-binding: t -*-
;;; Commentary:
;;  Configures js2-mode, prettier, and rjsx-mode
;;; Code:
(defvar jlgre/js-packages '(js2-mode
			    prettier-js
			    rjsx-mode))

(dolist (pack jlgre/js-packages)
  (jlgre/require pack))

(with-eval-after-load 'prettier-js
  (setq prettier-js-args
	'("--tab-width" "4"
	  "--single-quote" "true")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.component.js\\' . rjsx-mode"))

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

(provide 'init-js)
;;; init-js.el ends here
