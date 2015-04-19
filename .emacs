;;(when (>= emacs-major-version 24)
;;  (require 'package)
;;  (package-initialize)
;;  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

(setq load-path (cons (expand-file-name "~/.emacs.d/lisp")
		      load-path))

(require 'template)
(template-initialize)

;; Use spaces instead of tab. TODO(wenjie) Might only works for python.
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

;; Auto-indent
(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-j") 'kill-whole-line)

;; Move to other window. 
(global-set-key (kbd "C-o") 'other-window)

(when (require 'mwheel nil 'noerror)
    (mouse-wheel-mode t))

(and
 (require 'centered-cursor-mode)
 (global-centered-cursor-mode +1))

(transient-mark-mode t)

(require 'web-mode)

