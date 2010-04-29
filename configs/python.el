;;; Emacs as a Python IDE
;;; See the src/build.sh for setting up on a new machine

;;; set up the python virtualenv
(setenv "PYMACS_PYTHON" "~/.emacs.d/usr/bin/python2.6")

;;; python-mode
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(require 'python-mode)
(add-hook 'python-mode-hook
      (lambda ()
	(set-variable 'py-indent-offset 4)
	;(set-variable 'py-smart-indentation nil)
	(set-variable 'indent-tabs-mode nil)
	(define-key py-mode-map (kbd "RET") 'newline-and-indent)
	;(define-key py-mode-map [tab] 'yas/expand)
	;(setq yas/after-exit-snippet-hook 'indent-according-to-mode)
	;(smart-operator-mode-on)
	))

;;; Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))
(require 'pymacs)


;;; IPython shell
;(setq ipython-command "/usr/local/bin/ipython")
(require 'ipython)

;;; Ropemacs
(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)

;;; Syntax Check using Flymake to use PyFlakes.
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "~/.emacs.d/usr/bin/pyflakes" (list local-file))))
  
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)

;(setq pyflakes "/usr/local/bin/pyflakes")

;(when (load "flymake" t)
;   (defun flymake-pyflakes-init ()
;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
; 		       'flymake-create-temp-inplace))
; 	   (local-file (file-relative-name
; 			temp-file
; 			(file-name-directory buffer-file-name))))
;       (list pyflakes (list local-file))))
;   (add-to-list 'flymake-allowed-file-name-masks
; 	       '("\\.py\\'" flymake-pyflakes-init)))
; (add-hook 'find-file-hook 'flymake-find-file-hook)
