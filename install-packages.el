;;-- install packages --;;
;; Base Setting
(el-get-bundle init-loader)
(el-get-bundle helm)

;; Key setting
(el-get-bundle ddskk)
(el-get-bundle bind-key)

;; Screen setting
;;(el-get-bundle centerd-cursor-mode)
(el-get-bundle yascroll)
(el-get-bundle smooth-scroll)
(el-get-bundle smooth-scrolling)

;; Programming mode
(el-get-bundle web-mode)

;; input support mode
(el-get-bundle auto-complete)
(el-get-bundle ac-helm)

(provide 'install-packages)
