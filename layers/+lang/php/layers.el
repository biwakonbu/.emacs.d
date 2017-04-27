(defconst php/layers/install-packages
  '(eldoc
    flycheck
    php-auto-snippets
    (php-extras
     :repo "arnested/php-extras"
     :fetcher github)
    web-mode
    php-mode))
    ;;phpcbf))

(layers/install-packages php/layers/install-packages)
