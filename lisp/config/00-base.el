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

;; powerline
(require 'powerline)
(defun powerline-custom-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line-buffer-id (if active 'mode-line-buffer-id 'mode-line-buffer-id-inactive))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'powerline-active1 'powerline-inactive1))
                          (face2 (if active 'powerline-active2 'powerline-inactive2))
                          (separator-left (intern (format "powerline-%s-%s"
                                                          (powerline-current-separator)
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           (powerline-current-separator)
                                                           (cdr powerline-default-separator-dir))))
                          (lhs (list (powerline-raw "%*" mode-line 'l)
                                     (when powerline-display-buffer-size
                                       (powerline-buffer-size mode-line 'l))
                                     (when powerline-display-mule-info
                                       (powerline-raw mode-line-mule-info mode-line 'l))
                                     (powerline-buffer-id mode-line-buffer-id 'l)
                                     (when (and (boundp 'which-func-mode) which-func-mode)
                                       (powerline-raw which-func-format nil 'l))
                                     (powerline-raw " ")
                                     (funcall separator-left mode-line face1)
                                     (when (and (boundp 'erc-track-minor-mode) erc-track-minor-mode)
                                       (powerline-raw erc-modified-channels-object face1 'l))
                                     (powerline-major-mode face1 'l)
                                     (powerline-process face1)
                                     (powerline-minor-modes face1 'l)
                                     (powerline-narrow face1 'l)
                                     (powerline-raw " " face1)
                                     (funcall separator-left face1 face2)
                                     (powerline-vc face2 'r)
                                     (when (bound-and-true-p nyan-mode)
                                       (powerline-raw (list (nyan-create)) face2 'l))))
                          (rhs (list (powerline-raw global-mode-string face2 'r)
                                     (funcall separator-right face2 face1)
                                     (unless window-system
                                       (powerline-raw (char-to-string #xe0a1) face1 'l))
                                     (powerline-raw "%4l" face1 'l)
                                     (powerline-raw ":" face1 'l)
                                     (powerline-raw "%3c" face1 'r)
                                     (funcall separator-right face1 mode-line)
                                     (powerline-raw " ")
                                     (powerline-raw "%6p" mode-line 'r)
                                     (when powerline-display-hud
                                       (powerline-hud face2 face1)))))
                     (concat (powerline-render lhs)
                             (powerline-fill face2 (powerline-width rhs))
                             (powerline-render rhs)))))))
(powerline-custom-theme)

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
  (message "not found cmigemo command.")
