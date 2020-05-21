;;; init-java.el --- Java configurations
;;; Commentary:
;;  Configures lsp and dap mode
;;; Code:
(jlgre/require 'lsp-java)
(jlgre/require 'dap-mode)

(add-hook 'java-mode-hook 'lsp)
(add-hook 'lsp 'dap-mode)
(add-hook 'dap-mode 'dap-ui-mode)

(provide 'init-java)
;;; init-java.el ends here
