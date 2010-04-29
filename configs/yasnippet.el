;(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(setq yas/extra-mode-hooks '(python-mode-hook django-mode-hook))
(setq yas/text-popup-function
      'yas/dropdown-list-popup-for-template)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets/")

(add-hook 'org-mode-hook
          #'(lambda ()
              (setq yas/fallback-behavior
                    `(apply ,(lookup-key org-mode-map [tab])))
              (local-set-key [tab] 'yas/expand)))