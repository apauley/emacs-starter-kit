;; Taken (with some slight modifications) from
;; http://www.emacswiki.org/emacs/ColorTheme#toc7
;; http://www.emacswiki.org/emacs/JakubHozak

(require 'color-theme)
(color-theme-initialize)

(setq my-color-themes (mapcar #'car color-themes))
(defun my-theme-set-default () ; Set the first row
  (interactive)
  (setq theme-current my-color-themes)
  (funcall (car theme-current)))

(defun my-describe-theme () ; Show the current theme
  (interactive)
  (message "%s" (car theme-current)))

; Set the next theme (fixed by Chris Webber - tanks)
(defun my-theme-cycle ()
  (interactive)
  (setq theme-current (cdr theme-current))
  (if (null theme-current)
      (setq theme-current my-color-themes))
  (funcall (car theme-current))
  (message "%S" (car theme-current)))

(setq theme-current my-color-themes)
(setq color-theme-is-global nil) ; Initialization
(my-theme-set-default)
(global-set-key [f6] 'my-theme-cycle)

(provide 'color-theme-cycle)
