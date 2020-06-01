;;; init-ui.el --- Handle UI tweaks for emacs -*- lexical-binding: t -*-
;;; Commentary:
;;  This handles things like disabling the toolbar, scrollbar, paren faces, etc
;;; Code:
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; Emacs is annoying by default, disable some of that
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)

;; Paren settings
(show-paren-mode 1)
(setq show-paren-delay 0)
(custom-set-faces
 '(show-paren-match ((t (:underline 'foreground-color)))))

;; Font
(defvar jlgre/default-font "Source Code Pro")
(defvar jlgre/default-size 110)
(defvar jlgre/scale-on-mac t)

(when (and jlgre/scale-on-mac (equal system-type 'darwin))
  (setq jlgre/default-size (+ jlgre/default-size 40)))

(set-face-attribute 'default nil
		    :family jlgre/default-font
		    :height jlgre/default-size
		    :weight 'normal
		    :width 'normal)

;; On mac make the titlebar the same color as the theme
(jlgre/require 'ns-auto-titlebar)
(when (equal system-type 'darwin)
    (ns-auto-titlebar-mode))

;; Define a hook so that I can disable line numbers by mode
(defun jlgre/no-linum ()
  (display-line-numbers-mode -1))

(provide 'init-ui)
;;; init-ui.el ends here
