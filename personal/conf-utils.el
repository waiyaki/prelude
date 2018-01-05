;; enable line numbers
(global-linum-mode t)


;; Enable wakatime
(require 'wakatime-mode)
(global-wakatime-mode t)

;; Enable git-gutter
(global-git-gutter-mode t)
(git-gutter:linum-setup)

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

(provide 'conf-utils)
