;;; company --- config.el -*- lexical-bindings: t; -*-

;;; Commentary:

;;; Code:

(use-package company
  :config
  (global-company-mode)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1
        company-selection-wrap-around t)
  (add-to-list 'company-backends 'company-dabbrev t)

  (custom-set-variables
   '(company-dabbrev-downcase nil)
   '(company-dabbrev-other-buffers 'all)
   '(company-dabbrev-code-other-buffers 'all))

  (bind-keys :map company-mode-map
             ("C-:" . company-complete)
             ("C-;" . company-dabbrev))

  (bind-keys :map company-active-map
             ("C-h" . nil)
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)
             ("C-s" . company-search-words-regexp))

  (bind-keys :map company-search-map
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)))

(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :bind (:map yas-minor-mode-map
              ("C-x i i" . yas-insert-snippet)
              ("C-x i n" . yas-new-snippet)
              ("C-x i v" . yas-visit-snippet-file)
              ("C-x i l" . yas-describe-tables)
              ("C-x i g" . yas-reload-all)
              ("C-c C-c" . aya-create)
              ("C-c C-y" . aya-expand)
              ("C-c C-w" . aya-persist-snippet)
              ("C-c C-i" . ivy-yasnippet))
  :config
  (yas-global-mode 1)
  (setq yas-prompt-functions '(yas-ido-prompt)))

;; (use-package git-complete
;;   :config
;;   (bind-key "C-c C-c" 'git-complete)
;;   (setq git-complete-enable-autopair t)
;;   (setq git-complete-threshold 0.2))

(use-package company-statistics
  :config
  (company-statistics-mode))

;;; config.el ends here
