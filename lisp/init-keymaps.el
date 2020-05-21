;;; init-keymaps.el --- Defines my custom keymaps -*- lexical-binding: t -*-
;;; Commentary:
;;  Sets up a mics key prefix for some binds I want
;;  and bind to C-z
;;; Code:
(define-prefix-command 'jlgre/map)
(global-set-key (kbd "C-z") 'jlgre/map)

(provide 'init-keymaps)
;;; init-keymaps ends here
