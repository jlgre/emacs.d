;;; init-smartparens.el --- Smart Parens configurations
;;; Commentary:
;;  Configures sp, and adds some keybindings I like
;;; Code:
(jlgre/require 'smartparens)

(defvar keys '("<" ">" "(" ")" "}" "w" "k"))
(defvar funcs '(sp-backward-barf-sexp
		sp-forward-barf-sexp
		sp-backward-slurp-sexp
		sp-forward-slurp-sexp
		sp-slurp-hybrid-sexp
		sp-copy-sexp
		sp-kill-sexp))

(with-eval-after-load 'smartparens
  (setq sp-show-pair-from-inside nil)
  (require 'smartparens-config)

  (dotimes (i (length keys))
    (define-key jlgre/map (kbd (nth i keys)) (nth i funcs))))

(smartparens-global-mode t)

(provide 'init-smartparens)
;;; init-smartparens.el ends here
