(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(savehist-mode 1)
(put 'erase-buffer 'disabled nil)
(setq make-backup-files nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default indent-tabs-mode nil)
(setq show-paren-delay 0)
(show-paren-mode 1)

(setq gofmt-command "/usr/local/go/bin/gofmt")
(add-hook 'before-save-hook #'gofmt-before-save)
(setq rust-rustfmt-bin "~/.cargo/bin/rustfmt")
(setq rust-format-on-save t)

(defun readlink-f ()
  "show current buffer's full path"
  (interactive)
  (message (buffer-file-name (current-buffer))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(rust-mode go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
