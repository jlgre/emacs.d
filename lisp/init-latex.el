;;; init-latex.el --- LaTeX support -*- lexical-binding: t -*-
;;; Commentary:
;;  Configures some latex nicities
;;; Code:
(jlgre/require 'auctex t)

(add-to-list 'auto-mode-alist '("\\.tex\\'" . LaTeX-mode))
(add-hook 'LaTeX-mode-hook 'jlgre/no-company)

(setq font-latex-fontify-script nil)

(with-eval-after-load "tex"
  (add-to-list 'TeX-view-program-list '("zathura" "/usr/bin/zathura %o"))
  (setcdr (assq 'output-pdf TeX-view-program-selection) '("zathura")))

(provide 'init-latex)
;;; init-latex.el ends here
