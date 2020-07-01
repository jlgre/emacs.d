;;; init-dj.el --- Add goto functionality
;;; Commentary:
;;  Uses dumb-jump to just
;;; Code:
(jlgre/require 'dumb-jump)

(add-hook 'lsp-mode-hook
	  (lambda ()
	    (dumb-jump-mode)))

(provide 'init-dj)
;;; init-dj.el ends here
