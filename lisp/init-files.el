;;; init-files.el --- File modifications
;;; Commentary:
;;  Different files handling things
;;  Disables Emacs annoying things
;;  Also handles some file opening
;;; Code:
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups")))
      auto-save-default nil
      create-lockfiles nil)

(jlgre/require 'openwith)

(with-eval-after-load 'openwith
  (setq openwith-associations '(("\\.pdf\\'" "evince" (file)))))

(add-hook 'after-init-hook 'openwith-mode)

(provide 'init-files)
;;; init-files.el ends here
