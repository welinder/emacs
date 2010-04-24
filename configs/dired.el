;; dired-details+
;(require 'dired+) ; WARNING: has a stupid color scheme
(require 'dired-details)
(require 'dired-details+)
(setq dired-details-hidden-string "")

(require 'dired-x) 
(setq dired-omit-files 
      (rx (or (seq bol (? ".") "#")         ;; emacs autosave files 
              (seq "~" eol)                 ;; backup-files 
              (seq bol "CVS" eol)           ;; CVS dirs 
              (seq ".pyc" eol)
              (seq bol ".DS_Store" eol)
              ))) 
(setq dired-omit-extensions 
      (append dired-latex-unclean-extensions 
              dired-bibtex-unclean-extensions 
              dired-texinfo-unclean-extensions)) 
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode 1))) 
(put 'dired-find-alternate-file 'disabled nil)