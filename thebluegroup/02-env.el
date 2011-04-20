(setq x-super-keysym 'meta)

(setq whitespace-style
      '(trailing lines space-before-tab indentation space-after-tab)
      whitespace-line-column 80)

(column-number-mode 1)
(global-linum-mode 1)
(global-whitespace-mode 1)

(add-hook 'before-save-hook 'whitespace-cleanup)
