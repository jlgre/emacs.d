;;; init-php.el --- php support for emacs
;;; Commentary:
;;  Php mode for typical php files,
;;  Web mode for .blade
;;; Code:
(defvar jlgre/packages '(web-mode php-mode))
(dolist (package jlgre/packages)
  (jlgre/require package))

(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.blade.php\\'" . web-mode))

(provide 'init-php)
;;; init-php.el ends here
