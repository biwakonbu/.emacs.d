(require 'init-loader)
(setq init-loader-show-log-after-init nil)

;; set init-load directory.
(init-loader-load "~/.emacs.d/lisp/config")

(provide 'init-loader-config)
