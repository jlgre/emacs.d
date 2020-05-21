;;; init-magit.el --- Git management in emacs
;;; Commentary:
;;  Config magit
;;; Code:
(jlgre/require 'magit)

(with-eval-after-load 'magit
  (define-key jlgre/map (kbd "g") 'magit-status))

(provide 'init-magit)
;;; init-magit.el ends here
