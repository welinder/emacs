;;; Custom Key Bindings

;; BUFFERS
(require 'bs)
; show list of buffers
(global-set-key (kbd "<C-tab>") 'bs-show)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
; cycle buffers
(global-set-key (kbd "<M-s-right>") 'bs-cycle-next)
(global-set-key (kbd "<M-s-left>") 'bs-cycle-previous)
; kill buffer the native way with COMMAND-w
(global-set-key (kbd "s-w") 'kill-buffer)
; switch to latest buffer (fast switching)
(defun switch-to-previous-buffer ()
      (interactive)
      (switch-to-buffer (other-buffer)))
(global-set-key (kbd "<M-tab>") 'switch-to-previous-buffer)

;; WINDOW NAVIGATION
; cycle through windows
(global-set-key (kbd "<C-s-tab>") 'other-window)

; emacsd-tile.el -- tiling windows for emacs
; stolen from http://monkey.org/~marius/emacs-as-a-tiling-window-manager.html
(defun swap-with (dir)
  (interactive)
  (let ((other-window (windmove-find-other-window dir)))
    (when other-window
      (let* ((this-window  (selected-window))
             (this-buffer  (window-buffer this-window))
             (other-buffer (window-buffer other-window))
             (this-start   (window-start this-window))
             (other-start  (window-start other-window)))
        (set-window-buffer this-window  other-buffer)
        (set-window-buffer other-window this-buffer)
        (set-window-start  this-window  other-start)
        (set-window-start  other-window this-start)))))

(global-set-key (kbd "C-M-J") (lambda () (interactive) (swap-with 'down)))
(global-set-key (kbd "C-M-K") (lambda () (interactive) (swap-with 'up)))
(global-set-key (kbd "C-M-H") (lambda () (interactive) (swap-with 'left)))
(global-set-key (kbd "C-M-L") (lambda () (interactive) (swap-with 'right)))

(global-set-key (kbd "M-J") (lambda () (interactive) (enlarge-window 1)))
(global-set-key (kbd "M-K") (lambda () (interactive) (enlarge-window -1)))
(global-set-key (kbd "M-H") (lambda () (interactive) (enlarge-window -1 t)))
(global-set-key (kbd "M-L") (lambda () (interactive) (enlarge-window 1 t)))

(global-set-key (kbd "<M-down>") 'windmove-down)
(global-set-key (kbd "<M-up>") 'windmove-up)
(global-set-key (kbd "<M-left>") 'windmove-left)
(global-set-key (kbd "<M-right>") 'windmove-right)

(provide 'emacsd-tile)
