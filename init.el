(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Installed packages:
;; lsp-mode
;; go-mode

(savehist-mode 1)
(put 'erase-buffer 'disabled nil)
(setq make-backup-files nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default indent-tabs-mode nil)
(setq show-paren-delay 0)
(show-paren-mode 1)
;; Don't let custom/elpa append to init.el
(setq custom-file "custom.el")

(require 'lsp-mode)
;; lsp/gopls
(add-hook 'go-mode-hook #'lsp-deferred)
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(defun readlink-f ()
  "show current buffer's full path"
  (interactive)
  (message (buffer-file-name (current-buffer))))
