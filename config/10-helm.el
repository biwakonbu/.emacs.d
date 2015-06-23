;-- helm-mode config --;

(require 'helm-config)
(helm-mode 1)

; key config
(define-key helm-map (kbd "C-h") 'delete-backward-char)
