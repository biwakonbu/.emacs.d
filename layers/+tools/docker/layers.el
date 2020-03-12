(defconst docker/layers/install-packages
  '((dockerfile-mode
     :repo "spotify/dockerfile-mode"
     :fetcher github
     t)
    ))

(layers/install-packages docker/layers/install-packages)
