;; helm
(bind-key "[TAB]" 'helm-execute-persistent-action helm-read-file-map)
(bind-key "[TAB]" 'helm-execute-persistent-action helm-find-files-map)
(bind-key* "M-x" 'helm-M-x)
(bind-key* "C-x b" 'helm-buffers-list)

;; kill helm C-h key. to backspace.
(bind-key "C-h" nil helm-map)
