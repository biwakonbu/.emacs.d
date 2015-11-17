;; pyenv package. url: https://github.com/cyberved/pyenv.el
(require 'pyenv)
(setq pyenv-show-active-python-in-modeline nil)
(setq pyenv-modeline-function 'pyenv--modeline-plain)
(global-pyenv-mode)
