;;; htmlfontify-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "hfy-cmap" "hfy-cmap.el" "b4ef8f2f8450a1deaaf15ece25f7f928")
;;; Generated autoloads from hfy-cmap.el

(autoload 'htmlfontify-load-rgb-file "hfy-cmap" "\
Load an X11 style rgb.txt FILE.
Search `hfy-rgb-load-path' if FILE is not specified.
Loads the variable `hfy-rgb-txt-color-map', which is used by
`hfy-fallback-color-values'.

\(fn &optional FILE)" t nil)

(autoload 'hfy-fallback-color-values "hfy-cmap" "\
Use a fallback method for obtaining the rgb values for a color.

\(fn COLOR-STRING)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "hfy-cmap" "hfy-cmap.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from hfy-cmap.el

(register-definition-prefixes "hfy-cmap" '("hfy-" "htmlfontify-unload-rgb-file"))

;;;***

;;;***

(provide 'htmlfontify-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; htmlfontify-loaddefs.el ends here
