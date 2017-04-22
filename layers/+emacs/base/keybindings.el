;; global key settings.
(bind-key* "C-h" 'delete-backward-char)

;; skk-auto-fill-mode
(bind-key* "C-x j" 'skk-mode)

;; zoom-frm-in/out
(bind-key* "C-x +" 'zoom-frm-in)
(bind-key* "C-x -" 'zoom-frm-out)
