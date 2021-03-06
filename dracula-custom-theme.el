;;; dracula-theme.el --- Dracula Theme

;; Copyright 2016, All rights reserved
;;
;; Code licensed under the MIT license
;; http://zenorocha.mit-license.org

;; Author: film42
;; Version: 1.2.5
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/zenorocha/dracula-theme

;;; Commentary:

;; A dark color theme available for a number of editors.

;;; Code:

(deftheme dracula-custom)

(let ((class '((class color) (min-colors 89)))
      (default-font "#f8f8f2") ;; update
      (fg2 "#e2e2dc") ;; no-update
      (fg3 "#ccccc7") ;; no-update
      (fg4 "#b6b6b2") ;; no-update
      (default-background "#282a36") ;; update
      (bg2 "#373844") ;; no-update
      (bg3 "#464752") ;; no-update
      (row-column-font "#df717a") ;; update
      (hl-background "#454836") ;; create
      (bg5 "#44475a") ;; no-update
      (keyword "#868aca") ;; update
      (key2 "#0189cc") ;; no-update
      (key3 "#ff79c6")
      (builtin "#5a9ada")
      (const   "#d2b35a") ;; update
      ;; (comment "#6272a4")
      (comment "#587F35") ;; update
      (df-font "#f8f8f2") ;; create
      (func    "#dd875f") ;; update
      (region-background "#15437a") ;; update
      (str     "#df717a") ;; update
      (type    "#a6e22a")
      (var     "#f1e572")
      (warning "#ffb86c")
      (rainbow-1 "#f8f8f2")
      (rainbow-2 "#8be9fd")
      (rainbow-3 "#bd93f9")
      (rainbow-4 "#ff79c6")
      (rainbow-5 "#ffb86c")
      (rainbow-6 "#50fa7b")
      (rainbow-7 "#f1fa8c")
      (rainbow-8 "#0189cc")
      (eph-verbatim "#f1fa8c")
      (eph-code "#ff79c6"))

  (custom-theme-set-faces
   'dracula-custom
   ;; ツールバー
   (tool-bar-mode 0)
   ;; メニューバー
   (menu-bar-mode 0)
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
     (global-linum-mode t)
     ;; 行番号フォーマット
     (setq linum-format "%4d")
     ;; 戻り値
     nil)
     
   `(default ((,class (:background ,default-background :foreground ,default-font))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,df-font :bold nil))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
   `(region ((,class (:background ,region-background :foreground ,default-background))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line ((,class (:background  ,hl-background))))
   `(fringe ((,class (:background ,default-background :foreground ,fg4))))
   `(cursor ((,class (:background ,fg3))))
   `(show-paren-match-face ((,class (:background ,warning))))
   `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
   `(isearch-fail ((,class (:foreground ,default-background :background ,warning))))
   `(mode-line ((,class (:foreground nil :background ,bg3 :box ,bg3))))
   `(mode-line-inactive ((,class (:foreground ,default-font :background ,default-background :box ,default-background))))
   `(vertical-border ((,class (:foreground ,bg2))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))
   `(linum ((,class (:slant italic :foreground ,row-column-font :background ,default-background))))
   `(outline-1 ((,class (:foreground ,rainbow-6))))
   `(outline-2 ((,class (:foreground ,rainbow-3))))
   `(outline-3 ((,class (:foreground ,rainbow-2))))
   `(outline-4 ((,class (:foreground ,rainbow-5))))
   `(outline-5 ((,class (:foreground ,rainbow-5))))
   `(outline-6 ((,class (:foreground ,rainbow-8))))
   `(org-agenda-structure ((,class (:foreground ,rainbow-3))))
   `(org-agenda-date ((,class (:foreground ,rainbow-2 :underline nil))))
   `(org-agenda-done ((,class (:foreground ,rainbow-6))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,comment))))
   `(org-block ((,class (:foreground ,rainbow-5))))
   `(org-code ((,class (:foreground ,rainbow-7))))
   `(org-column ((,class (:background ,row-column-font))))
   `(org-column-title ((,class (:inherit org-column :weight bold :underline t))))
   `(org-date ((,class (:foreground ,rainbow-2 :underline t))))
   `(org-document-info ((,class (:foreground ,rainbow-8))))
   `(org-document-info-keyword ((,class (:foreground ,rainbow-6))))
   `(org-document-title ((,class (:weight bold :foreground ,rainbow-5 :height 1.44))))
   `(org-done ((,class (:foreground ,rainbow-6))))
   `(org-ellipsis ((,class (:foreground ,comment))))
   `(org-footnote ((,class (:foreground ,rainbow-8))))
   `(org-formula ((,class (:foreground ,rainbow-4))))
   `(org-hide ((,class (:foreground ,default-background :background ,default-background))))
   `(org-link ((,class (:foreground ,rainbow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,rainbow-6))))
   `(org-scheduled-previously ((,class (:foreground ,rainbow-7))))
   `(org-scheduled-today ((,class (:foreground ,rainbow-6))))
   `(org-special-keyword ((,class (:foreground ,rainbow-7))))
   `(org-table ((,class (:foreground ,rainbow-3))))
   `(org-todo ((,class (:foreground ,rainbow-4))))
   `(org-upcoming-deadline ((,class (:foreground ,rainbow-7))))
   `(org-warning ((,class (:weight bold :foreground ,rainbow-4))))
   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(ido-only-match ((,class (:foreground ,warning))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(ido-subdir ((,class (:foreground ,builtin))))
   `(gnus-group-mail-1 ((,class (:foreground ,keyword :bold t))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-mail-1 :bold nil))))
   `(gnus-group-mail-2 ((,class (:foreground ,const :bold t))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-mail-2 :bold nil))))
   `(gnus-group-mail-3 ((,class (:foreground ,comment :bold t))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-mail-3 :bold nil))))
   `(gnus-group-mail-low ((,class (:foreground ,bg5 :bold t))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-mail-low :bold nil))))
   `(gnus-group-news-1 ((,class (:foreground ,keyword :bold t))))
   `(gnus-group-news-1-empty ((,class (:inherit gnus-group-news-1 :bold nil))))
   `(gnus-group-news-2 ((,class (:foreground ,const :bold t))))
   `(gnus-group-news-2-empty ((,class (:inherit gnus-group-news-2 :bold nil))))
   `(gnus-group-news-3 ((,class (:foreground ,comment :bold t))))
   `(gnus-group-news-3-empty ((,class (:inherit gnus-group-news-3 :bold nil))))
   `(gnus-group-news-low ((,class (:foreground ,bg5 :bold t))))
   `(gnus-group-news-low-empty ((,class (:inherit gnus-group-news-low :bold nil))))
   `(gnus-group-news-4 ((,class (:inherit gnus-group-news-low))))
   `(gnus-group-news-4-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-5 ((,class (:inherit gnus-group-news-low))))
   `(gnus-group-news-5-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-6 ((,class (:inherit gnus-group-news-low))))
   `(gnus-group-news-6-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(gnus-summary-normal-unread ((,class (:foreground ,comment :weight normal))))
   `(gnus-summary-normal-read ((,class (:foreground ,bg5 :weight normal))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,keyword :weight light))))
   `(gnus-summary-selected ((,class (:inverse-video t))))
   `(gnus-summary-markup-face ((,class (:foreground ,const))))
   `(gnus-summary-normal-ancient ((,class (:inherit gnus-summary-normal-read))))
   `(spam ((,class (:inherit gnus-summary-normal-read :foreground ,warning :strike-through t :slant oblique))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(ffap ((,class (:foreground ,fg4))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-member ((,class (:foreground ,fg3))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,key3))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning))))
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(whitespace-trailing ((,class :inherit trailing-whitespace)))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,rainbow-1)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,rainbow-2)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,rainbow-3)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,rainbow-4)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,rainbow-5)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,rainbow-6)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,rainbow-7)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,rainbow-8)))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-section-highlight      ((,class (:background ,bg2))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
   `(term ((,class (:foreground ,default-font :background ,default-background))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
   `(term-color-green ((,class (:foreground ,type :background ,bg3))))
   `(term-color-yellow ((,class (:foreground ,var :background ,var))))
   `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(helm-header ((,class (:foreground ,fg2 :background ,default-background :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,keyword :background ,default-background :underline nil :weight bold))))
   `(helm-selection ((,class (:foreground ,default-font :background ,hl-background :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-visible-mark ((,class (:foreground ,default-background :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground ,default-background :background ,default-font))))
   `(helm-separator ((,class (:foreground ,type :background ,default-background))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background ,default-background))))
   `(helm-time-zone-home ((,class (:foreground ,type :background ,default-background))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background ,default-background))))
   `(helm-buffer-process ((,class (:foreground ,func :background ,default-background :bold, t))))
   `(helm-buffer-saved-out ((,class (:foreground ,default-font :background ,default-background))))
   `(helm-buffer-size ((,class (:foreground ,default-font :background ,default-background))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,default-background :weight bold))))
   `(helm-ff-file ((,class (:foreground ,default-font :background ,default-background :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,key2 :background ,default-background :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,default-background :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,default-background :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,default-background :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,default-font :background ,default-background))))
   `(helm-grep-file ((,class (:foreground ,default-font :background ,default-background))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background ,default-background))))
   `(helm-grep-lineno ((,class (:foreground ,default-font :background ,default-background))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,default-background))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,default-background))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(company-echo-common ((,class (:foreground ,default-background :background ,default-font))))
   `(company-preview ((,class (:background ,default-background :foreground ,key2))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,type :background ,default-background))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,default-background :bold t))))
   `(company-tooltip-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,keyword))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,builtin))))
   `(jde-java-font-lock-package-face ((t (:foreground ,var))))
   `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
   `(jde-java-font-lock-number-face ((t (:foreground ,var))))
   `(enh-ruby-op-face ((,class (:foreground ,keyword))))
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,str))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,str))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,str))))
   `(which-func ((,class (:inherit ,font-lock-function-name-face))))
   `(powerline-evil-base-face ((t (:foreground ,bg2))))
   `(powerline-evil-normal-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-6))))
   `(powerline-evil-insert-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-2))))
   `(powerline-evil-visual-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-5))))
   `(powerline-evil-operator-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-4))))
   `(powerline-evil-replace-face ((,class (:inherit powerline-evil-base-face :background "#ff5555"))))
   `(powerline-evil-motion-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-3))))
   `(powerline-evil-emacs-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-7))))
   ;; dired
   `(dired-directory ((t (:foreground "#A6E22A"))))
   `(dired-symlink ((t (:foreground "#66D9EF"))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dracula-custom)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; dracula-theme.el ends here
