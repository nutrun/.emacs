(savehist-mode 1)
(put 'erase-buffer 'disabled nil)
(setq make-backup-files nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default indent-tabs-mode nil)
(setq show-paren-delay 0)
(show-paren-mode 1)

(defun readlink-f ()
  "show current buffer's full path"
  (interactive)
  (message (buffer-file-name (current-buffer))))
