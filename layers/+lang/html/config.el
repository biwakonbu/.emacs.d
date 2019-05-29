;;; html --- config.el -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(add-to-list 'auto-mode-alist '("\\.html" . web-mode))
(add-to-list 'auto-mode-alist '("\\.volt" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jinja" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\." . web-mode))

;; インデント関係
(defun web-mode-hook ()
  "Hooks for Web mode."
  (defvar web-mode-markup-indent-offset 4)
  (defvar web-mode-css-offset 4)
  (defvar web-mode-script-offset 4)
  (defvar web-mode-php-offset 4)
  (defvar web-mode-java-offset 4)
  (defvar web-mode-code-indent-offset 4)
  (defvar web-mode-asp-offset 4)
  (setq tab-width 2)
  (defvar web-mode-engines-alist
        '(;("mako" . "\\.html\\'")
          ("jinja" . "\\.jinja\\'")
          ("blade" . "\\.blade\\."))))

(add-hook 'web-mode-hook 'web-mode-hook)


;; scss mode.

(add-to-list 'auto-mode-alist '("\\.scss" . scss-mode))

(defun scss-mode-hook ()
  "Hooks for Scss mode."
  (defvar css-indent-offset 2))
(add-hook 'scss-mode-hook 'scss-mode-hook)

;; slim mode.

(add-to-list 'auto-mode-alist '("\\.slim" . slim-mode))

;; hook
(defun slim-mode-hook ()
  "Hooks for Slim mode."
  (defvar slim-indent-offset 2))
(add-hook 'slim-mode-hook 'slim-mode-hook)

;;; config.el ends here
