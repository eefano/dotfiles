
(set-default-coding-systems 'utf-8)

(desktop-save-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-default 'cursor-type 'bar)

(show-paren-mode 1)
(setq show-paren-delay 0)

(add-to-list 'default-frame-alist '(font .  "DejaVu Sans Mono-11:bold" ))
(set-face-attribute 'default t :font  "DejaVu Sans Mono-11:bold" )

(load-theme 'tango)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(require 'ido)
(ido-mode t)

(setq inhibit-splash-screen t)       ;; Don't show initial Emacs-logo and info
(cua-mode 1)                       ;; Enable ^Z, ^X, ^C, ^V, select with mouse and shift-cursor-movement
(transient-mark-mode 1)             ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t)  ;; Standard MS-Windows behaviour

; Define some additional "native-Windows" keystrokes (^tab, Alt/F4, ^A, ^F, ^O,
; ^S, ^W) and redefine (some of) the overridden Emacs functions.
   (global-set-key [C-tab] 'other-window)
   (global-set-key [M-f4] 'save-buffers-kill-emacs)
   (global-set-key "\C-a" 'mark-whole-buffer)
   (global-set-key "\C-f" 'isearch-forward)
   (global-set-key [f3] 'isearch-repeat-forward)
   (global-set-key "\C-o" 'find-file)
   (global-set-key "\C-s" 'save-buffer)
   (global-set-key "\C-w" 'kill-buffer-and-window)
   (global-set-key (kbd "C-S-o") 'open-line)
   (global-set-key (kbd "C-S-w") 'kill-region)
   (define-key global-map (kbd "RET") 'newline-and-indent) ; For programming language modes
   (define-key isearch-mode-map "\C-f" 'isearch-repeat-forward)

(global-set-key [f8] 'neotree-toggle)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "black"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#FF00FF"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#FF8000"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#0080FF"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#FF0000"))))
 '(tabbar-default ((t (:background "gray75" :foreground "gray25" :family "serif"))))
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "red" :box (:line-width 1 :color "white" :style released-button))))))


(setq tabbar-ruler-global-tabbar t)

(setq tabbar-buffer-groups-function
          (lambda ()
            (list "All")))

;; INIZIALIZZAZIONE PACCHETTI ELPA
(setq package-enable-at-startup nil)
(package-initialize)

;; Non si può lanciare prima di aver inizializzato i pacchetti elpa
(tabbar-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
