;;; init-package.el --- handle all package related things
;;; Commentary:
;;  Handles package installation and requiry
;;; Code:
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Build a framework for installing packages if they are not
;; already installed.
;; Require it once it has been installed, or after confirmed
;; that is has been installed
(defun jlgre/require (package &optional defer)
  (if (not (package-installed-p package))
      (progn (package-refresh-contents)
	     (package-install package)
	     (unless defer
	       (require package)))
    (unless defer
      (require package))))

(package-initialize)

(provide 'init-package)
;;; init-package.el ends here
