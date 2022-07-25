;;; ps-print-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "ps-mule" "ps-mule.el" "5be852bf816994653ba00b11f2b5eb52")
;;; Generated autoloads from ps-mule.el

(defvar ps-multibyte-buffer nil "\
Specifies the multi-byte buffer handling.

Valid values are:

  nil			  This is the value to use the default settings;
			  by default, this only works to print buffers with
			  only ASCII and Latin characters.   But this default
			  setting can be changed by setting the variable
			  `ps-mule-font-info-database-default' differently.
			  The initial value of this variable is
			  `ps-mule-font-info-database-latin' (see
			  documentation).

  `non-latin-printer'	  This is the value to use when you have a Japanese
			  or Korean PostScript printer and want to print
			  buffer with ASCII, Latin-1, Japanese (JISX0208 and
			  JISX0201-Kana) and Korean characters.  At present,
			  it was not tested with the Korean characters
			  printing.  If you have a korean PostScript printer,
			  please, test it.

  `bdf-font'		  This is the value to use when you want to print
			  buffer with BDF fonts.  BDF fonts include both latin
			  and non-latin fonts.  BDF (Bitmap Distribution
			  Format) is a format used for distributing X's font
			  source file.  BDF fonts are included in
			  `intlfonts-1.2' which is a collection of X11 fonts
			  for all characters supported by Emacs.  In order to
			  use this value, be sure to have installed
			  `intlfonts-1.2' and set the variable
			  `bdf-directory-list' appropriately (see ps-bdf.el for
			  documentation of this variable).

  `bdf-font-except-latin' This is like `bdf-font' except that it uses
			  PostScript default fonts to print ASCII and Latin-1
			  characters.  This is convenient when you want or
			  need to use both latin and non-latin characters on
			  the same buffer.  See `ps-font-family',
			  `ps-header-font-family' and `ps-font-info-database'.

Any other value is treated as nil.")

(custom-autoload 'ps-multibyte-buffer "ps-mule" t)

(autoload 'ps-mule-initialize "ps-mule" "\
Initialize global data for printing multi-byte characters." nil nil)

(autoload 'ps-mule-begin-job "ps-mule" "\
Start printing job for multi-byte chars between FROM and TO.
It checks if all multi-byte characters in the region are printable or not.

\(fn FROM TO)" nil nil)

(autoload 'ps-mule-end-job "ps-mule" "\
Finish printing job for multi-byte chars." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ps-mule" "ps-mule.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ps-mule.el

(register-definition-prefixes "ps-mule" '("ps-mule-"))

;;;***

;;;***

(provide 'ps-print-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ps-print-loaddefs.el ends here
