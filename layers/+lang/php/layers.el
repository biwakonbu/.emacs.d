(defconst php/layers/install-packages
  '(eldoc
    flycheck
    php-auto-snippets
    (php-extras
     :repo "arnested/php-extras"
     :fetcher github
     t)
    (web-mode
     :repo "fxbois/web-mode"
     :fetcher github
     t)
    php-mode
    ))
    ;;phpcbf))

(layers/install-packages php/layers/install-packages)
