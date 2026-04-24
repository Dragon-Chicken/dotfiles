(setq custom-file "~/.config/emacs/.emacs.custom.el")
(load custom-file)

;; melpa package repo
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; set font and font size
(add-to-list 'default-frame-alist '(font . "Maple Mono NF CN-12"))

;; basic config
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; completion
(require 'ido)
(ido-mode 1)
(ido-everywhere 1)

(use-package smex
  :ensure t)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(use-package corfu
  :ensure t)
(global-corfu-mode t)
(setq corfu-preview-current t)
(corfu-popupinfo-mode t)
(global-completion-preview-mode 1)

;; themes
(use-package gruber-darker-theme
  :ensure t)
;;(load-theme 'gruber-darker t)
;; some themes use this package
(use-package autothemer
  :ensure t)
;; load the custom themes folder
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")
(load-theme 'rose-pine t)

;; for indenting
(add-hook 'after-change-major-mode-hook
  '(lambda ()
  (setq-default indent-tabs-mode nil)
  (setq c-basic-offset 2)
  (setq c-set-style "gnu")
  (setq tab-width 2)))

(setq whitespace-style '(face tabs spaces trailing lines-tail space-before-tab
                              indentation empty missing-newline-at-eof))

;; (add-hook 'c-mode-hook '(whitespace-mode 1))

;; lsp
(use-package lsp-mode
  :ensure t)
(require 'lsp-mode)
(add-hook 'c-mode-hook #'lsp)
(setq lsp-headerline-breadcrumb-enable nil)

;; keybindings
;; this if so that I can do
;; select text then C-d to delete
(global-set-key (kbd "C-d") 'delete-forward-char)
