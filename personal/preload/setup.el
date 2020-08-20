(require 'package)

;; Add melpa and elpa
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(setq custom-packages
      (list
       'wakatime-mode
       'monokai-alt-theme
       'dracula-theme
       'neotree
       'multiple-cursors
       'aggressive-indent
       'all-the-icons
       'doom-themes
       'doom-modeline
       'highlight-indent-guides
       'cider-eval-sexp-fu
       'emmet-mode))

(while (setq custom-package (pop custom-packages))
  (unless (package-installed-p custom-package)
    (condition-case nil
        (package-install custom-package)
      (error
       (package-refresh-contents)
       (package-install custom-package)))))

;; Setup window size if running in graphic mode
(when (display-graphic-p)
    (setq initial-frame-alist
          '((top . 300) (left . 400) (width . 130) (height . 30))))

(provide 'setup)
