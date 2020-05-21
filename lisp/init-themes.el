;;; init-themes.el --- Theme configurations
;;; Commentary:
;;  This installs themes, as well as sets up my current theme and a binding to toggle themes
;;; Code:
(defvar jlgre/theme-packages '(doom-themes zenburn-theme faff-theme))
(dolist (theme jlgre/theme-packages)
  (jlgre/require theme t))

(defvar jlgre/themes '(doom-solarized-dark doom-solarized-light))
(defvar jlgre/themes-index 0)

(defun jlgre/load-theme ()
  (load-theme (nth jlgre/themes-index jlgre/themes) t))

(defun jlgre/cycle-theme ()
  (interactive)
  (if (equal (- (length jlgre/themes) 1) jlgre/themes-index)
      (progn
	(disable-theme (nth jlgre/themes-index jlgre/themes))
	(setq jlgre/themes-index 0)
	(jlgre/load-theme))
    (progn
      (disable-theme (nth jlgre/themes-index jlgre/themes))
      (setq jlgre/themes-index (+ jlgre/themes-index 1))
      (jlgre/load-theme))))

(define-key jlgre/map (kbd "t") 'jlgre/cycle-theme)

(jlgre/load-theme)

(provide 'init-themes)
;;; init-themes.el ends here