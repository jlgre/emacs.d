;;; init-racket.el --- Racket configurations
;;; Commentary:
;;  Installs and configures racket-mode
;;; Code:
(jlgre/require 'racket-mode)

(with-eval-after-load 'racket-mode
  (define-key racket-mode-map (kbd "C-\\") 'racket-insert-lambda))

(with-eval-after-load 'racket-repl-mode
  (define-key racket-repl-mode-map (kbd "C-\\") #'racket-insert-lambda))

(provide 'init-racket)
;;; init-racket.el ends here
