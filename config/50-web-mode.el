(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html" . web-mode))

;; インデント関係
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-html-offset   2)
  (setq web-mode-css-offset    2)
  (setq web-mode-script-offset 2)
  (setq web-mode-php-offset    2)
  (setq web-mode-java-offset   2)
  (setq web-mode-asp-offset    2)
  (setq tab-width 2))
(add-hook 'web-mode-hook 'web-mode-hook)
