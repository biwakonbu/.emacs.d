;; core-glayers.el is spacemacs layer like libraries.

;; install all layers.

(defconst core/install-layers
  '(+emacs/base
    +emacs/search
    +emacs/face

    +themes/themes-megapack

    ;; +completion/helm
    +completion/ivy
    +completion/company

    +checkers/syntax-cheking

    +shell/environment
    +shell/fish

    +tools/docker

    +lang/javascript
    +lang/python
    +lang/php
    ;; +lang/go
    +lang/common-lisp
    ;; +lang/clojure
    ;; +lang/erlang
    ;; +lang/elixir
    +lang/html
    +lang/yaml
    +lang/markdown

    +source-control/git
    +source-control/github))


;; layers/functions.

(defun layers/add-to-hooks (fun hooks)
  "Add function to hooks"
  (dolist (hook hooks)
    (add-hook hook fun)))

(defun layers/install-packages (packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (quelpa package t))))

(defun layers/add-layer (layer-path)
  (let ((layer-files '("layers.el"
                       "packages.el"
                       "funcs.el"
                       "config.el"
                       "keybindings.el")))
    (dolist (file layer-files)
      (layers/load-layer-file layer-path file)))
  (message "add %s layer completed." layer-path))

(defun layers/make-layer-path (layer file)
  (concat layer "/" file))

(defun layers/load-layer-file (layer file)
  (let ((filepath (concat start-directory "layers/"
                          (layers/make-layer-path layer file))))
    (if (file-exists-p filepath)
        (progn
          (load-file filepath)
          (message "loaded Layer's file: %s" filepath)))))

(defun layers/init ()
  (dolist (layer core/install-layers)
    (layers/add-layer (symbol-name layer))
    (message "installed %s layer." layer))
  (message "finish installed %d layers." (length core/install-layers)))

(provide 'core-layers)
