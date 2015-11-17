(require 'bind-key)

;; global key settings.
(bind-key* "C-h" 'delete-backward-char)

;; auto-compete with helm settings.
(bind-key* "C-;" 'ac-complete-with-helm)
(bind-key "C-;" 'ac-complete-with-helm ac-complete-mode-map)

;; anzu keys
(bind-key* "M-%" 'anzu-query-replace)
(bind-key* "C-M-%" 'anzu-query-replace-regexp)

;; kill helm C-h key. to backspace.
(bind-key "C-h" nil helm-map)

;; skk-auto-fill-mode
(bind-key* "C-x j" 'skk-mode)
