;;; init-search.el --- Isearch configs -*- lexical-binding: t -*-
;;; Commentary:
;;  Change some isearch stuff, install anzu
;;; Code:
(with-eval-after-load 'isearch
  (define-key isearch-mode-map [remap isearch-delete-char] 'isearch-del-char))

(jlgre/require 'anzu)

(add-hook 'after-init-hook 'global-anzu-mode)

(provide 'init-search)
;;; init-search.el ends here
