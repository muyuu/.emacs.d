;; Site-Lispディレクトリ設定
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/packages/")

;; 色分けする設定
(global-font-lock-mode t)
(require 'font-lock)

;; zencoding-mode
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(define-key zencoding-mode-keymap (kbd "C-i") 'zencoding-expand-line)

;;---------------------------------------------------------------------
;;キーバインド
;;---------------------------------------------------------------------
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "M-?") 'help-for-help)
(define-key global-map [(C u)] 'undo)
;;行の先頭でC-kを一回押したら行全体を消去
(setq kill-whole-line t)
;;改行した時にインデントを追加
(global-set-key "\C-m" 'newline-and-indent)
;;C-wをコピー
(define-key global-map [(C w)] 'kill-ring-save)
;;M-wをカット
(define-key global-map [(M w)] 'kill-region)
;; 次のウィンドウへ移動
(define-key global-map (kbd "C-M-n") 'next-multiframe-window)
;; 前のウィンドウへ移動
(define-key global-map (kbd "C-M-p") 'previous-multiframe-window)

;;---------------------------------------------------------------------
;; View
;;---------------------------------------------------------------------
(setq frame-title-format (format "Emacs@%s : %%f" (system-name)))

