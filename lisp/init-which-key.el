;;; init-which-key.el --- Helpfully display keybinds -*- lexical-binding: t -*-
;;; Commentary:
;;  Config which key
;;; Code:
(jlgre/require 'which-key)

(with-eval-after-load 'which-key
  (setq which-key-sort-order 'which-key-key-order-alpha))

(add-hook 'after-init-hook 'which-key-mode)

(provide 'init-which-key)
;;; init-which-key.el
