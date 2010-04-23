(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))

(defconst emacs-config-dir "~/.emacs.d/configs/" "")
(setq load-path (cons "~/.emacs.d" load-path))
(defun load-cfg-files (filelist)
  (dolist (file filelist)
    (load (expand-file-name
           (concat emacs-config-dir file)))
    (message "Loaded config file: %s" file)
    ))

(load-cfg-files '("theme"
                  "main"
                  "python"
                  "custom"
                  "keybindings"))

(setq custom-file "~/.emacs.d/configs/custom.el")

(setq confirm-kill-emacs
      (lambda (e)
        (y-or-n-p-with-timeout
         "Really exit Emacs (automatically exits in 5 secs)? " 5 t)))



;(server-start)


;(add-to-list 'load-path "~/emacs/utils")
;(require 'linum)    ; line numbering
;(setq linum-format "%d ")
;(linum-mode 1)

;;; PACKAGES

;;; auto-complete
;(add-to-list 'load-path "~/emacs/packages/auto-complete-1.2")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories ;"~/emacs/packages/auto-complete-1.2/ac-dict")
;(ac-config-default)
