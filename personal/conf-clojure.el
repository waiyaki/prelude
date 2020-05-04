;; Sexp-fu
(require 'cider-eval-sexp-fu)
(setq eval-sexp-fu-flash-duration 0.25)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; Clojure indent to always indent
(setq clojure-indent-style 'always-indent)

(setq nrepl-use-ssh-fallback-for-remote-hosts t)
;; Use clojure mode for other extensions
; (add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
; (add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
