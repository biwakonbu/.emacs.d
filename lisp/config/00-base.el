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

;; max call function
(setq max-lisp-eval-depth 1000)

;; anti aging power-line.
(setq ns-use-srgb-colorspace nil)

(mode-icons-mode)
(setq mode-icons-grayscale-transform nil)

(require 'spaceline-config)
(spaceline-emacs-theme)

;; other-theme
;; (spaceline-spaceemacs-theme)

(setq powerline-default-separator 'slant)
(spaceline-compile)

;; gist.el
(require 'gist)

;; grep-edit
(require 'grep-edit)

;; add shell path to exec-path.
(let ((shellpath
       (split-string
        (shell-command-to-string "env | egrep '^PATH=' | sed 's/PATH=//; s/:/ /g'"))))
      (dolist (path shellpath)
        (add-to-list 'exec-path path)))

;; migemo
(if (executable-find "cmigemo")
    (progn
      (require 'migemo)
      (setq migemo-command "cmigemo")
      (setq migemo-options '("-q" "--emacs" "-i" "\a"))
      (setq migemo-dictionary "/usr/local/Cellar/cmigemo/20110227/share/migemo/utf-8/migemo-dict")
      ;;(setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
      (setq migemo-coding-system 'utf-8-unix)
      (setq migemo-user-dictionary nil)
      (setq migemo-regex-dictionary nil)
      (load-library "migemo")
      (migemo-init))
  (message "not found cmigemo command."))


