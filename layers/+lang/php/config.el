;;; php --- config.el -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

;; (add-hook 'php-mode-hook 'php-enable-default-coding-style)
;; (add-hook 'php-mode-hook 'phpcbf-enable-on-save)
(add-to-list 'auto-mode-alist '("\\.php" . php-mode))

;; (add-to-list 'load-path (concat temp-directory "php-extras/"))

(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
          (lambda ()
            (setq c-basic-offset 4)
            (setq tab-with 4)))

;;; config.el ends here
