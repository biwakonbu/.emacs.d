(require 'cl)

(defun core/all-elisp-byte-compile ()
  (interactive)
  (let ((elisp-paths (split-string (shell-command-to-string "find $HOME/.emacs.d/ -name '*.el'"))))
    (dolist (elisp-path elisp-paths)
      (byte-compile-file elisp-path)
      (message "compiled %s file." elisp-path))))

(defun core-kill-buffers (regexp)
  "Kill buffers matching REGEXP without asking for confirmation."
  (interactive "sKill buffers matching this regular expression: ")
  (flet ((kill-buffer-ask (buffer) (kill-buffer buffer)))
    (kill-matching-buffers regexp)))

(provide 'core-funcs)
