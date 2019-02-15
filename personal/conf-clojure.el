;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; Clojure indent to always indent
(setq clojure-indent-style 'always-indent)

;; Use clojure mode for other extensions
; (add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
; (add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
