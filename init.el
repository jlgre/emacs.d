;;; init.el --- My emacs init file, consists primarily of calls to other elisp files -*- lexical-binding: t -*-
;;; Commentary:
;;  For adding features provide a file to ./lisp and require it here
;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-package)

(require 'init-keymaps)

(require 'init-files)

(require 'init-ui)
(require 'init-window)
(require 'init-editing-utils)
(require 'init-exec-path-from-shell)
(require 'init-themes)
(require 'init-which-key)
(require 'init-ivy)
(require 'init-company)
(require 'init-smartparens)
(require 'init-restclient)
(require 'init-projectile)
(require 'init-magit)
(require 'init-dired)

(require 'init-lsp)
(require 'init-flycheck)

(require 'init-js)
(require 'init-latex)
(require 'init-web)
(require 'init-racket)
(require 'init-markdown)
(require 'init-java)

(require 'init-diminish) ;; this has to go last
;;; init.el ends here
