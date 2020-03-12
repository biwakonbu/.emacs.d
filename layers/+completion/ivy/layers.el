(defconst ivy/layers/install-packages
  '((auto-highlight-symbol
     :repo "gennad/auto-highlight-symbol"
     :fetcher github
     t)
    (flx
     :repo "lewang/flx"
     :fetcher github
     :files ("flx.el")
     t)
    (counsel
     :repo "abo-abo/swiper"
     :fetcher github
     :files ("counsel.el")
     t)
    ivy
    (ivy-hydra
     :repo "abo-abo/swiper"
     :fetcher github
     :files ("ivy-hydra.el")
     t)
    wgrep
    yasnippet
    (ivy-yasnippet
     :repo "mkcms/ivy-yasnippet"
     :fetcher github
     t)
    ))

(layers/install-packages ivy/layers/install-packages)
