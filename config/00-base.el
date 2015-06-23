; Emacs file auto-byte-compile
(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-excluede-files-regexp "~/.emacs.d/temp/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

; auto revert file-buffer
(global-auto-revert-mode 1)
