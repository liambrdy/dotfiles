;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Liam Brady"
      user-mail-address "liam.james.brady@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-material
      doom-font (font-spec :family "Iosevka" :size 16))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; (setq projectile-globally-ignored-directories (append '("*build*") projectile-globally-ignored-directories))

(setq treemacs-directory-face (font-spec :family "Iosevka" :size 11))
(setq treemacs-file-face (font-spec :family "Iosevka" :size 9))
(setq treemacs-root-face (font-spec :family "Iosevka" :size 18))

(global-set-key (kbd "M-0") #'treemacs-select-window)

(global-set-key (kbd "C-x <left>") #'windmove-left)
(global-set-key (kbd "C-x <right>") #'windmove-right)
(global-set-key (kbd "C-x <up>") #'windmove-up)
(global-set-key (kbd "C-x <down>") #'windmove-down)

(global-set-key (kbd "C-.") #'rtags-find-symbol-at-point)

(global-set-key (kbd "M-RET") #'+term/toggle)

(global-set-key (kbd "C->") #'woman)

(global-set-key (kbd "C-+") #'+fold/open)
(global-set-key (kbd "C--") #'+fold/close)

; (add-hook! 'after-init-hook (map! :map c-mode-base-map :ne "C-." #'rtags-find-symbol-at-point))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1b1d1e" "#964C7B" "#74DFC4" "#FFE261" "#40B4C4" "#EB64B9" "#B4DCE7" "#FFFFFF"])
 '(custom-safe-themes
   '("3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "3d3807f1070bb91a68d6638a708ee09e63c0825ad21809c87138e676a60bda5d" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "a92e9da0fab90cbec4af4a2035602208cebf3d071ea547157b2bfc5d9bd4d48d" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "425cf02839fa7c5ebd6cb11f8074f6b8463ae6ed3eeb4cf5a2b18ffc33383b0b" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "9b272154fb77a926f52f2756ed5872877ad8d73d018a426d44c6083d1ed972b1" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "25f1b2ace87d23d803b42267fafdc38b31472e444c2aaa9069aa2c06be8955b2" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "fe94e2e42ccaa9714dd0f83a5aa1efeef819e22c5774115a9984293af609fce7" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "e2acbf379aa541e07373395b977a99c878c30f20c3761aac23e9223345526bcc" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "6177ecbffb8f37756012c9ee9fd73fc043520836d254397566e37c6204118852" default))
 '(fci-rule-color "#544863")
 '(jdee-db-active-breakpoint-face-colors (cons "#222228" "#40B4C4"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#222228" "#74DFC4"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#222228" "#4E415C"))
 '(objed-cursor-color "#964C7B")
 '(pdf-view-midnight-colors (cons "#FFFFFF" "#27212E"))
 '(rustic-ansi-faces
   ["#27212E" "#964C7B" "#74DFC4" "#FFE261" "#40B4C4" "#EB64B9" "#B4DCE7" "#FFFFFF"])
 '(vc-annotate-background "#27212E")
 '(vc-annotate-color-map
   (list
    (cons 20 "#74DFC4")
    (cons 40 "#a2e0a3")
    (cons 60 "#d0e182")
    (cons 80 "#FFE261")
    (cons 100 "#ffd35f")
    (cons 120 "#ffc55d")
    (cons 140 "#FFB85B")
    (cons 160 "#f89c7a")
    (cons 180 "#f18099")
    (cons 200 "#EB64B9")
    (cons 220 "#ce5ca4")
    (cons 240 "#b2548f")
    (cons 260 "#964C7B")
    (cons 280 "#834973")
    (cons 300 "#72466b")
    (cons 320 "#604363")
    (cons 340 "#544863")
    (cons 360 "#544863")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
