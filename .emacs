(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/elpa/py-yapf-20160101.412/")

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(and
      (require 'centered-cursor-mode)
      (global-centered-cursor-mode +1))

(require 'py-yapf)
(add-hook 'python-mode-hook 'py-yapf-enable-on-save)

(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "C-j") 'kill-whole-line)

(menu-bar-mode -1)
(tool-bar-mode -1)

(require 'template)
(template-initialize)


(define-key global-map (kbd "RET") 'newline-and-indent)

;; Python Hook
(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 2
			    python-indent 2))))

;; This is matlab related config.
(add-to-list 'load-path "~/.emacs.d/lisp/matlab-emacs/")
;;(require 'hilit19)
(require 'matlab-load)

(setq matlab-indent-function-body t)  ; if you want function bodies indented
(setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
(defun my-matlab-mode-hook ()
  (setq fill-column 76))		; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
(defun my-matlab-shell-mode-hook ());
;;  (global-set-key "C-c" 'interrupt-process))
(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)

;;(global-font-lock-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

