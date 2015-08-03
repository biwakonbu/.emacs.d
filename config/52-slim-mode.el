(require 'slim-mode)

(add-to-list 'auto-mode-alist '("\\.slim" . slim-mode))

;; hook
(defun slim-mode-hook ()
  "Hooks for Slim mode."
  (setq slim-indent-offset 2))
(add-hook 'slim-mode-hook 'slim-mode-hook)
