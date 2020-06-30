;;; init-keybindings.el --- Keybinding framework
;;; Commentary:
;;  Installs and configures general.el
;;  Sets up general (no pun intended) keybings
;;  More specific ones will be in their respective configuration files
;;; Code:
(jlgre/require 'general)

;; Remap: up-down in company
;;       up-down in ivy
;; To: C-j/k
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous))

(with-eval-after-load 'ivy
  (define-key ivy-minibuffer-map (kbd "C-j") #'ivy-next-line)
  (define-key ivy-minibuffer-map (kbd "C-k") #'ivy-previous-line))

(general-define-key
 :states 'normal
 :keymaps 'override
 :prefix "SPC"
 ;; windows
 "wd" 'delete-window
 "wD" 'delete-other-windows
 "wh" 'evil-window-left
 "wj" 'evil-window-down
 "wk" 'evil-window-up
 "wl" 'evil-window-right
 "wv" 'split-window-vertically
 "w/" 'split-window-horizontally
 ;; buffers
 "bb" 'ivy-switch-buffer
 "bd" 'kill-this-buffer
 "bD" 'kill-buffer
 ;; files
 "ff" 'counsel-find-file
 "fr" 'rename-file
 "fs" 'save-buffer
 "f/" 'swiper)

(provide 'init-keybindings)
;;; init-keybindings.el ends here
