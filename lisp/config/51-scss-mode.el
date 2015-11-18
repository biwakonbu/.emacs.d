(require 'scss-mode)

(add-to-list 'auto-mode-alist '("\\.scss" . scss-mode))

(defun scss-mode-hook ()
  "Hooks for Scss mode."
  (setq css-indent-offset 2))
(add-hook 'scss-mode-hook 'scss-mode-hook)
