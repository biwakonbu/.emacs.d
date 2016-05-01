(require 'erlang-start)
(require 'erlang-flymake)
(require 'distel)
(distel-setup)

(add-hook 'after-init-hook 'my-after-init-hook)
(defun my-after-init-hook ()
  (require 'edts-start))
