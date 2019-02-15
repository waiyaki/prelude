;; enable line numbers
(global-linum-mode t)

;; Enable wakatime
(require 'wakatime-mode)
(global-wakatime-mode t)

;; Enable git-commit-mode globally
(global-git-commit-mode t)

;; Enable aggressive indent globally
(global-aggressive-indent-mode t)

;; Set font and theme when in graphic mode
(if (display-graphic-p)
    (progn
      (load-theme 'dracula t)
      (set-face-attribute 'default nil :family "Operator Mono" :height 130 :weight 'light))
  (load-theme 'monokai-alt t))


(setq-default cursor-type 'bar)
(set-cursor-color "#ffff00")

;; Mark sexp
(global-set-key (kbd "C-c m") 'sp-mark-sexp)

;; Copy sexp
(global-set-key (kbd "C-c C-y") 'sp-copy-sexp)

;; Hide scrollbars
(toggle-scroll-bar -1)

(provide 'conf-utils)
