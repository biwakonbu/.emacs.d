;;-- interface settings --;;

;; スムーススクロール
;;(require 'smooth-scroll)
;;(smooth-scroll-mode t)

;; カーソルの位置を真ん中あたりに固定する
;;(require 'smooth-scrolling)


;; anzu
(require 'anzu)
(global-anzu-mode +1)
(set-face-attribute 'anzu-mode-line nil
                    :foreground "yellow" :weight 'light)

(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-to-string-separator " => "))
