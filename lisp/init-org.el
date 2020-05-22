;;; init-org.el --- Org mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;  This handles org config, org-babel, export to revealjs, etc
;;; Code:
(jlgre/require 'org)

(with-eval-after-load 'org
  (setq org-hide-leading-stars t
	org-confirm-babel-evaluate nil
	org-log-done 'time)

  ;; Org-babel config
  (org-babel-do-load-languages
   'org-babel-do-load-languages
   '((python . t)
     (C . t))))

;; Enable export to revealjs in org mode
(jlgre/require 'ox-reveal)
(setq org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js"
      org-reveal-mathjax t)

(add-hook 'org-mode-hook 'jlgre/no-linum)
(add-hook 'org-mode-hook 'jlgre/no-company)

(provide 'init-org)
;;; init-org.el ends here
