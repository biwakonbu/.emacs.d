(setq auto-save-default nil)

;; auto revert file-buffer
(global-auto-revert-mode 1)

(tool-bar-mode 0)
(menu-bar-mode 0)

;; indent mode
(setq-default tab-with 2 indent-tabs-mode nil)

;; auto fill mode
(remove-hook 'text-mode-hook 'turn-on-auto-fill)

;; turn-off beep sound
(setq ring-bell-function 'ignore)

;; yasnippet
(yas-global-mode t)

;; max call function
(setq max-lisp-eval-depth 1000)

;; automation resize window
(golden-ratio-mode t)n

;; compilation-filter-hook
(add-hook 'compilation-filter-hook
          '(lambda
             (let ((inhibit-read-only t))
               (ansi-color-apply-on-region compilation-filter-start (point-max)))))

;; highlihting todo mode hook
(add-hook 'hl-todo-mode 'text-mode-hook)
(add-hook 'hl-todo-mode 'prog-mode-hook)

;; migemo
(if (executable-find "cmigemo")
    (progn
      (require 'migemo)
      (setq migemo-command "cmigemo")
      (setq migemo-options '("-q" "--emacs" "-i" "\a"))
      (cond
       ((file-exists-p "/usr/share/cmigemo/utf-8/migemo-dict")
        ;; linux install path.
        (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict"))
       ((file-exists-p "/usr/local/Cellar/cmigemo/20110227/share/migemo/utf-8/migemo-dict")
        ;; Mac OSX Homebrew install pash.
        (setq migemo-dictionary "/usr/local/Cellar/cmigemo/20110227/share/migemo/utf-8/migemo-dict")))
      (setq migemo-coding-system 'utf-8-unix)
      (setq migemo-user-dictionary nil)
      (setq migemo-regex-dictionary nil)
      (load-library "migemo")
      (migemo-init))
  (message "not found cmigemo command."))

(setq persp-add-on-switch-or-display t) ;バッファを切り替えたら見えるようにする
(persp-mode 1)
(defun persp-register-buffers-on-create ()
  (interactive)
  (dolist (bufname (condition-case _
                       (helm-comp-read
                        "Buffers: "
                        (mapcar 'buffer-name (buffer-list))
                        :must-match t
                        :marked-candidates t)
                     (quit nil)))
    (persp-add-buffer (get-buffer bufname))))
(add-hook 'persp-activated-hook 'persp-register-buffers-on-create)
