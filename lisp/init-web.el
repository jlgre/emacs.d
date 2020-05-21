;;; init-web.el --- Web configurations - html/css mostly
;;; Commentary:
;;  Enables web mode
;;; Code:
(jlgre/require 'web-mode)

(with-eval-after-load 'web-mode
  (define-key web-mode-map (kbd "C-c o") 'browse-url-of-file))

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(provide 'init-web)
;;; init-web.el ends here
