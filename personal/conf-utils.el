;; enable line numbers
(global-linum-mode t)

;; Enable wakatime
(require 'wakatime-mode)
(global-wakatime-mode t)

;; Enable git-commit-mode globally
(global-git-commit-mode t)

;; all the icons
(require 'all-the-icons)

;; doom themes
(require 'doom-themes)
(doom-themes-neotree-config)

;; Doom modeline
(require 'doom-modeline)
(doom-modeline-mode t)


;; Enable aggressive indent globally
;;; Temporary disable this since it seems to align more code than is touched in
;;; the current scope, making for confusing diffs
;; (global-aggressive-indent-mode t)

;; Set font and theme when in graphic mode
(load-theme 'monokai-alt t)

(if (display-graphic-p)
    (set-face-attribute 'default nil :family "Fira Code" :height 130 :weight 'light))


(setq-default cursor-type 'bar)
(set-cursor-color "#ffff00")

;; Mark sexp
(global-set-key (kbd "C-c m") 'sp-mark-sexp)

;; Copy sexp
(global-set-key (kbd "C-c M-y") 'sp-copy-sexp)

;; Kill sexp
(global-set-key (kbd "C-c M-k") 'sp-kill-sexp)

;; Navigate sexp
(global-set-key (kbd "C-c C-a") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-c C-e") 'sp-end-of-sexp)

;; Hide scrollbars
(toggle-scroll-bar -1)

(provide 'conf-utils)
