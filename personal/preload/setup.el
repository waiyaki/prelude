(require 'package)

;; Add melpa and elpa
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; elpy
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(package-initialize)

(setq custom-packages
    (list
       'wakatime-mode

       ;; Python
       'elpy 'py-autopep8 'ein

       ;; JavaScript
       'web-mode 'emmet-mode  'company-tern))

(while (setq custom-package (pop custom-packages))
  (unless (package-installed-p custom-package)
    (condition-case nil
      (package-install custom-package)
      (error
        (package-refresh-contents)
        (package-install custom-package)))))


;; Set up path and other vars better on macOS
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'setup)
