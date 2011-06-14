(setq erl-lib-dir "/usr/local/lib/erlang/lib/")

(setq erl-tools-dir
      (file-name-as-directory
       (first (last (file-expand-wildcards (concat erl-lib-dir "tools-*"))))))

(setq erl-emacs-dir (concat erl-tools-dir "emacs"))
(add-to-list 'load-path erl-emacs-dir)

(setq tags-file-name "~/olympus/TAGS")

(require 'erlang-start)
(require 'erlang-flymake)
