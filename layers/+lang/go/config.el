(setenv "GOPATH" (concat (getenv "HOME") "/go"))

(add-hook 'go-mode-hook
          (lambda ()
            (setq gofmt-command "goimports")
            (setq tab-width 4)
            (add-hook 'before-save-hook 'gofmt-before-save)
            (set (make-local-variable 'compile-command)
                 "go build -v && go test -v && go vet")
            (local-set-key (kbd "M-.") 'godef-jump))
          (go-eldoc-setup))
