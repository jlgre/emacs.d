;;; init-diminish.el --- Dimish hides annoying modes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(jlgre/require 'diminish)
(defvar jlgre/hidden-modes '(flycheck-mode
			     smartparens-mode
			     ivy-mode
			     counsel-mode
			     which-key-mode
			     eldoc-mode
			     prettier-mode
			     auto-revert-mode
			     company-mode))

(dolist (package jlgre/hidden-modes)
  (diminish package))

(provide 'init-diminish)
;;; init-diminish.el ends here
