;; enable line numbers
(global-linum-mode t)


;; Enable wakatime
(require 'wakatime-mode)
(global-wakatime-mode t)

(load-theme 'monokai-alt t)

;; Enable git-gutter
(global-git-gutter-mode t)
(git-gutter:linum-setup)

;; Enable git-commit-mode globally
(global-git-commit-mode t)

;; Set font
(set-face-attribute 'default nil :family "Fira Code" :height 130 :weight 'light)

(setq-default cursor-type 'bar)
(set-cursor-color "#ffff00")

(provide 'conf-utils)
