;;; init-flycheck.el --- Syntax checking support -*- lexical-binding: t -*-
;;; Company:
;;  Install flycheck for on the fly syntax checking
;;; Code:
(jlgre/require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

(provide 'init-flycheck)
;;; init-flycheck.el ends here
