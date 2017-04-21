;; auto-compete with helm settinggs.
(bind-key* "C-;" 'auto-complete)
(bind-key "C-;" 'auto-complete ac-mode-map)

;; ac-menu-map.
(bind-key "C-p" 'ac-next ac-menu-map)
(bind-key "C-n" 'ac-previous ac-menu-map)
(bind-key "C-s" 'ac-isearch ac-menu-map)
