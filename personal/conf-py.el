;;;; Python Configuration

;; enable elpy
(elpy-enable)
;; Use flycheck in elpy
(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(add-hook 'elpy-mode-hook 'flycheck-mode)

(setq python-shell-interpreter "/usr/local/bin/python3")

;; Use autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Use Ipython
(elpy-use-ipython)

;; Jupyter notebook
(require 'ein)

(provide 'conf-py)
