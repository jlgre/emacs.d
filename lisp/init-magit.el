;;; init-magit.el --- Git management in emacs -*- lexical-binding: t -*-
;;; Commentary:
;;  Config magit
;;; Code:
(jlgre/require 'magit)

(with-eval-after-load 'magit
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
  (general-define-key
   :states 'normal
   :keymaps 'override
   :prefix "SPC"
   "g" 'magit-status))

(provide 'init-magit)
;;; init-magit.el ends here
