(defconst erlang/layers/install-packages
  '(erlang-mode
    edts))

(if (executable-find "erlc")
    (layers/install-packages erlang/layers/install-packages))
