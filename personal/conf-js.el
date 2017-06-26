;;;; BEGIN JAVASCRIPT CONFIGURATION

;; Tern
(add-to-list 'company-backends 'company-tern)

;; use web-mode for jsx files
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.js[x]?$" . web-mode))

;; Force web-mode’s content type as jsx for .js and .jsx files.
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))


;; turn on flycheck globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint and use eslint instead. Also disable json linting.
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers '(javascript-jshint json-jsonlint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
;; (set-default flycheck-temp-prefix ".flycheck")

;; Make flycheck use local .eslint if it exists
(defun my/use-local-eslint ()
  "Hook for webmode.  Make it use local eslint."
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory) "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js" root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'my/use-local-eslint)

;; Adjust indent of web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Adjust indentation to 2 spaces."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'my-web-mode-hook)

;; Improve JSX highlighting in web-mode
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  "Improve JSX highlighting."
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))


;; Emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(setq emmet-expand-jsx-className? t) ;; default nil
(global-set-key (kbd "C-c C-z") 'emmet-expand-line) ;; Ctrl+c Ctrl+z


(add-hook 'web-mode-hook (lambda () (tern-mode t)))

(defun eslint-fix-file ()
  (interactive)
  (message "eslint --fixing the file" (buffer-file-name))
  (shell-command (concat "eslint_d --fix " (buffer-file-name))))

(defun eslint-fix-file-and-revert ()
  (interactive)
  (when (string= (file-name-extension (buffer-file-name)) "js")
    (eslint-fix-file)
    (revert-buffer t t)))

(add-hook 'web-mode-hook
          (lambda ()
            (add-hook 'after-save-hook #'eslint-fix-file-and-revert)))

;;;; END JAVASCRIPT CONFIGURATION.

(provide 'conf-js)
