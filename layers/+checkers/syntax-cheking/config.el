;;; syntax-cheking --- config.el -*- lexical-binding: t; -*-

;;; Commentary:

;; This file is syntax check layer's config.

;;; Code:

;; flycheck mode on (global)
(global-flycheck-mode)

(add-hook 'php-mode-hook
          (lambda ()
            (setq flycheck-phpcs-standard "PSR2")))
(setq php-mode-coding-style (quote psr2))

;;; config.el ends here
