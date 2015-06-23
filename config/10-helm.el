;-- helm-mode config --;
(require 'helm)
(require 'helm-mode)

(defadvice helm-mode (around avoid-read-file-name activate)
  (let ((read-file-name-function read-file-name-function)
        (completing-read-function completing-read-function))
    ad-do-it))
(setq completing-read-function 'my-helm-completing-read-default)
(defun my-helm-completing-read-default (&rest _)
  (apply (cond ;; [2014-08-11 Mon]helm版のread-file-nameは重いからいらない
          ((eq (nth 1 _) 'read-file-name-internal)
           'completing-read-default)
          (t
           'helm--completing-read-default))
         _))

; kill helm C-h key. to backspace.
(bind-key "C-h" nil helm-map)
