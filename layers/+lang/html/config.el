;;; html --- config.el -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(add-to-list 'auto-mode-alist '("\\.html" . web-mode))
(add-to-list 'auto-mode-alist '("\\.volt" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jinja" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\." . web-mode))

;; インデント関係
;; (defun web-mode-hook ()
;;   "Hooks for Web mode."
;;   (setq web-mode-markup-indent-offset 4)
;;   (setq web-mode-css-offset 4)
;;   (setq web-mode-script-offset 4)
;;   (setq web-mode-php-offset 4)
;;   (setq web-mode-java-offset 4)
;;   (setq web-mode-code-indent-offset 4)
;;   (setq web-mode-asp-offset 4)
;;   (setq tab-width 2)
;;   (setq web-mode-engines-alist
;;         '(;("mako" . "\\.html\\'")
;;           ("jinja" . "\\.jinja\\'")
;;           ("blade" . "\\.blade\\.")))
;;   (setq web-mode-enable-auto-indentation nil))
;; (add-hook 'web-mode-hook 'web-mode-hook)

;; scss mode.

(add-to-list 'auto-mode-alist '("\\.scss" . scss-mode))

(defun scss-mode-hook ()
  "Hooks for Scss mode."
  (setq css-indent-offset 2))
(add-hook 'scss-mode-hook 'scss-mode-hook)

;; slim mode.

(add-to-list 'auto-mode-alist '("\\.slim" . slim-mode))

;; hook
(defun slim-mode-hook ()
  "Hooks for Slim mode."
  (setq slim-indent-offset 2))
(add-hook 'slim-mode-hook 'slim-mode-hook)

;;; config.el ends here
