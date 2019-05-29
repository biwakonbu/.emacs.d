;;; search --- config.el -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package dumb-jump
  :bind (("M-g o" . dumb-jump-go-other-window)
         ("M-g j" . dumb-jump-go)
         ("M-g i" . dumb-jump-go-prompt)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window))
  :config (progn
            (require 'rg)
            (rg-enable-default-bindings)
            (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
            (setq dumb-jump-window 'other)
            (setq dumb-jump-max-find-time 10)
            (defvar dumb-jump-force-searcher 'rg))
  :ensure)

(dumb-jump-mode t)

;;; config.el ends here
