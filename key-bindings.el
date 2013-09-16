(global-set-key (kbd "C-c b") 'create-scratch-buffer)

(global-set-key (kbd "M-s") 'save-buffer)

;; Window controls
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c j") 'windmove-down)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c l") 'windmove-right)

(global-set-key (kbd "C-<kp-add>") 'enlarge-window)
(global-set-key (kbd "C-<kp-subtract>") 'shrink-window)

;; Expand region
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "M-n") 'next-line)
(global-set-key (kbd "M-p") 'previous-line)

;; Project Management
(global-set-key (kbd "C-c p") 'fuzzy-find-in-project)

;; Text manipulation
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR.")
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-Z") 'zap-to-char)

(global-set-key (kbd "C-x r t") 'set-rectangular-region-anchor)

(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C-c d") 'duplicate-line)

;; Modes and more
(global-set-key (kbd "C-;") 'magit-status)
(require 'flyspell)
(define-key flyspell-mode-map (kbd "C-;") 'magit-status)

(global-set-key (kbd "C-x e") 'eshell)
(global-set-key (kbd "C-c q") 'auto-fill-mode)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(define-key global-map (kbd "C-c c") 'org-capture)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

(global-set-key (kbd "C-c e") 'eval-and-replace)

(provide 'key-bindings)
