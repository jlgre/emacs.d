;;; init-restclient.el --- Rest client mode to make requests within emacs -*- lexical-binding: t -*-
;;; Commentary:
;;  Configs restclient mode, and completion for it
;;; Code:
(jlgre/require 'restclient)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

(jlgre/require 'company-restclient)
(add-to-list 'company-backends 'company-restclient)

(provide 'init-restclient)
;;; init-restclient.el ends here
