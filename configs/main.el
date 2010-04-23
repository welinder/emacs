;;; Main Usability/Layout settings

;;; Indention
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;;; Fonts
(set-default-font "Inconsolata-16")


;;; Enable fullscreen mode with M-RET
;;; http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;(menu-bar-mode -1)
(toggle-scroll-bar -1)
;(tool-bar-mode -1)