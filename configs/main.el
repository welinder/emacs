;;; Main Usability/Layout settings

;;; Indention
(setq-default tab-width 2) ; default tab width
(setq-default indent-tabs-mode nil) ; replaces tabs with spaces

;;; Fonts
(set-default-font "Inconsolata-16")

;;; Enable fullscreen mode with M-RET
;;; http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;;; Display
(toggle-scroll-bar -1)
(setq inhibit-startup-message t) ; no splash screen
(global-hl-line-mode 1)
(set-cursor-color "white")

;; use UTF-8
(prefer-coding-system 'utf-8)

; Lines shouldn't be longer than 79 chars
(setq fill-column 72)

;; make pretty
(global-font-lock-mode 1)

;; remove the beeping, it drives me nuts
(setq ring-bell-function 'ignore)
 
;; shows current selected region
(setq-default transient-mark-mode t)

;; titlebar = buffer unless filename
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; show paired parenthasis
(show-paren-mode 1)
 
;; line numbers
(global-linum-mode 1)
(setq column-number-mode  t)

;; turn off tool bar, and menu bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; get rid of yes-or-no questions - y or n is enough
(defalias 'yes-or-no-p 'y-or-n-p)

;; make side by side buffers function the same as the main window
(setq truncate-partial-width-windows nil)
