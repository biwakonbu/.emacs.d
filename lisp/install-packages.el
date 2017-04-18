;;-- install packages --;;
;; Base Setting
(quelpa 'init-loader t)

(quelpa 'use-package t)

;; buffer search package
(quelpa 'anzu t)
(quelpa 'avy t)

;;;; Programming mode
(quelpa '(persp-mode
          :repo "Bad-ptr/persp-mode.el"
          :fetcher github
          :stable t))

(provide 'install-packages)
