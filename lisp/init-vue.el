;;; init-vue.el --- Add vue support to emacs
;;; Commentary:
;;; Code:
(jlgre/require 'vue-mode)

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))

(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))

(provide 'init-vue)
;;; init-vue ends here
