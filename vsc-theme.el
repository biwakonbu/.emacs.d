(deftheme vsc
  "VisualStudio Code color theme")

(custom-theme-set-faces
 'vsc
 ;; 背景・文字・カーソル
 '(cursor ((t (:background "#A8A8A8"))))
 '(default ((t (:background "#171717" :foreground "#D8D8D8"))))

 ;; 選択範囲
 '(region ((t (:background "#15437A"))))

 ;; ツールバー
 (tool-bar-mode 0)

 ;; 戻り値が nil にならない物をまとめる (thme spec でエラーが起こる)
 (progn
   ;; カーソル
   (setq-default cursor-type 'bar)
   ;; 現在行ハイライト
   (global-hl-line-mode t)
   ;; 対応する括弧をハイライト
   (show-paren-mode t)
   ;; 選択範囲をハイライト
   (transient-mark-mode t)
   ;; 起動時の画面
   (setq inhibit-startup-message t)
   ;; scratch の文字
   (setq initial-scratch-message "")
   ;; 行番号表示
   ;;(global-linum-mode t)
   ;;(set-face-attribute 'linum nil
   ;;:foreground "#bf616a"
   ;;:height 0.9)
   ;; 行番号フォーマット
   ;;(setq linum-format "%5d")
   ;; スクロールバー
   (require 'yascroll)
   (global-yascroll-bar-mode 1)
   ;; yascroll 表示時間
   (setq yascroll:delay-to-hide nil)
   ;; 戻り値
   nil)

 ;; スクロールバー
 (scroll-bar-mode 0)

 ;; yascroll カラー
 '(yascroll:thumb-fringe ((t (:foreground "#383838" :background "#383838"))))
 
 ;; モードライン
 '(mode-line ((t (:foreground "#F8F8F2" :background "#000000"
                              :box (:line-width 1 :color "#000000" :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground nil :background nil))))
 '(mode-line-inactive ((t (:foreground "#BCBCBC" :background "#333333"
                                       :box (:line-width 1 :color "#333333")))))

 ;; ハイライト
 '(highlight ((t (:background "#C4BE89"))))
 '(hl-line ((t (:background "#1F1F1F"))))
 
 ;; 関数名
 '(font-lock-function-name-face ((t (:foreground "#FFFFFF"))))

 ;; 変数名・変数の内容
 '(font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
 '(font-lock-string-face ((t (:foreground "#D78181"))))

 ;; 特定キーワード
 '(font-lock-keyword-face ((t (:foreground "#4A8ACA"))))

 ;; Boolean
 '(font-lock-constant-face((t (:foreground "#D2B35A"))))

 ;; 括弧
 '(show-paren-match-face ((t (:foreground "#1B1D1E" :background "#FD971F"))))
 '(paren-face ((t (:foreground "#A6E22A" :background nil))))

 ;; コメント
 '(font-lock-comment-face ((t (:foreground "#587F35"))))

 ;; CSS
 '(css-selector ((t (:foreground "#66D9EF"))))
 '(css-property ((t (:foreground "#FD971F"))))

 ;; nXML-mode
 ;; タグ名
 '(nxml-element-local-name ((t (:foreground "#F92672"))))
 ;; 属性
 '(nxml-attribute-local-name ((t (:foreground "#66D9EF"))))
 ;; 括弧
 '(nxml-tag-delimiter ((t (:foreground "#A6E22A"))))
 ;; DOCTYPE宣言
 '(nxml-markup-declaration-delimiter ((t (:foreground "#74715D"))))

 ;; dired
 '(dired-directory ((t (:foreground "#A6E22A"))))
 '(dired-symlink ((t (:foreground "#66D9EF"))))

 ;; web-mode. colors.
 '(web-mode-doctype-face
   ((t (:foreground "#4A8ACA"))))
 '(web-mode-html-tag-face
   ((t (:foreground "#4A8ACA"))))
 '(web-mode-html-attr-name-face
   ((t (:foreground "#87CEEB"))))
 '(web-mode-html-attr-equal-face
   ((t (:foreground "#FFFFFF"))))
 '(web-mode-html-attr-value-face
   ((t (:foreground "#D78181"))))
 '(web-mode-comment-face
   ((t (:foreground "#587F35"))))
 '(web-mode-server-comment-face
   ((t (:foreground "#587F35"))))
 ;;; web-mode. css colors.
 '(web-mode-css-at-rule-face
   ((t (:foreground "#DFCF44"))))
 '(web-mode-comment-face
   ((t (:foreground "#587F35"))))
 '(web-mode-css-selector-face
   ((t (:foreground "#DFCF44"))))
 '(web-mode-css-pseudo-class
   ((t (:foreground "#DFCF44"))))
 '(web-mode-css-property-name-face
   ((t (:foreground "#87CEEB"))))
 '(web-mode-css-string-face
   ((t (:foreground "#D78181"))))

 ;; MMM-mode
 '(mmm-default-submode-face ((t (:foreground nil :background "#000000")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'vsc)
