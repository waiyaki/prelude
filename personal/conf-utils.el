;; enable line numbers
(global-linum-mode t)


;; Enable wakatime
(require 'wakatime-mode)
(global-wakatime-mode t)

(load-theme 'monokai-alt t)

;; Set font
(set-face-attribute 'default nil :family "Fira Code" :height 130 :weight 'light)

(setq-default cursor-type 'bar)
(set-cursor-color "#ffff00")

(provide 'conf-utils)
