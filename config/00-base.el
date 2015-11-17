;; auto revert file-buffer
(global-auto-revert-mode 1)

;; indent mode
(setq-default tab-with 4 indent-tabs-mode nil)

;; auto fill mode
(remove-hook 'text-mode-hook 'turn-on-auto-fill)

;; turn-off beep sound
(setq ring-bell-function 'ignore)

;; ac-mode
(require 'auto-complete-config)
(ac-config-default)

;; yasnippet
(yas-global-mode t)

;; projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
