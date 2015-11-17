(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html" . web-mode))

;; インデント関係
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-offset 2)
  (setq web-mode-script-offset 2)
  (setq web-mode-php-offset 2)
  (setq web-mode-java-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-asp-offset 2)
  (setq tab-width 2)
  (setq web-mode-engines-alist
        '(("mako" . "\\.html\\'"))))

(add-hook 'web-mode-hook 'web-mode-hook)
