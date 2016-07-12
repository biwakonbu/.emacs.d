(require 'bind-key)

;; global key settings.
(bind-key* "C-h" 'delete-backward-char)

;; auto-compete with helm settinggs.
(bind-key* "C-;" 'auto-complete)
(bind-key "C-;" 'auto-complete ac-mode-map)
;; ac-menu-map.
(bind-key "C-p" 'ac-next ac-menu-map)
(bind-key "C-n" 'ac-previous ac-menu-map)
(bind-key "C-s" 'ac-isearch ac-menu-map)

;; helm
(bind-key "[TAB]" 'helm-execute-persistent-action helm-read-file-map)
(bind-key "[TAB]" 'helm-execute-persistent-action helm-find-files-map)
(bind-key* "M-x" 'helm-M-x)
(bind-key* "C-x b" 'helm-buffers-list)

;; anzu keys
(bind-key* "M-%" 'anzu-query-replace)
(bind-key* "C-M-%" 'anzu-query-replace-regexp)

;; avy
(bind-key* "C-'" 'avy-goto-char-2)
(bind-key* "M-g M-g" 'avy-goto-line)

;; kill helm C-h key. to backspace.
(bind-key "C-h" nil helm-map)

;; skk-auto-fill-mode
(bind-key* "C-x j" 'skk-mode)

;; magit
(bind-key* "C-c C-s" 'magit-status)
