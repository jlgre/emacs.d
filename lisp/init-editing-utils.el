;;; init-editing-utils.el --- Some useful configurations for editing
;;; Commentary:
;;  This includes some basic variable settings, as well as some helpful
;;  editing functions
;;; Code:
(setq indent-tabs-mode nil)

;; Mimic vsc's C-e and C-S-e functionality
(defun jlgre/smart-open-line ()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun jlgre/smart-open-line-above ()
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

;; Bind it like vsc
(global-set-key (kbd "C-<return>") 'jlgre/smart-open-line)
(global-set-key (kbd "C-S-<return>") 'jlgre/smart-open-line-above)

;; Nice commenting bound to M-;
;; Good package terrible name
(jlgre/require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

(provide 'init-editing-utils)
;;; init-editing-utils ends here
