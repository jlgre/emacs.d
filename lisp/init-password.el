;;; init-password.el --- this generates a password of specified length and puts in in the clipboard -*- lexical-binding: t -*-
;;; Commentary:
;;  Defaults to a 20 character one
;;  I want to kill-rand-pass so that I can just have it in the clipboard
;;; Code:
(defun random-alpha-num-sym ()
  (let* ((alpha-num-sym "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890?!@$")
	 (alpha-num-sym-len 66))
    (elt alpha-num-sym (random alpha-num-sym-len))))

(defun gen-rand-pass (&optional len)
"Gen a password that is len long, or 20.
LEN default to 20"
  (interactive)
  (let ((n (if (numberp len) len 20)))
    (insert "\n")
    (dotimes (_ n)
      (insert (random-alpha-num-sym)))))

(defun kill-rand-pass ()
"Gen a password from gen-rand-pass, and then kill it."
  (interactive)
  (gen-rand-pass)
  (kill-whole-line))

(provide 'init-password)
;;; init-password ends here
