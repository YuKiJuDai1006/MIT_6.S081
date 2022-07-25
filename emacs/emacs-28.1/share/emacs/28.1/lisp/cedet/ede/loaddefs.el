;;; loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads "actual autoloads are elsewhere" "ede/base" "base.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from base.el

(register-definition-prefixes "ede/base" '("ede-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ede/config" "config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from config.el

(register-definition-prefixes "ede/config" '("ede-"))

;;;***

;;;### (autoloads nil "ede/cpp-root" "cpp-root.el" "63bfb39ad4927306527e7c2407709def")
;;; Generated autoloads from cpp-root.el

(eieio-defclass-autoload 'ede-cpp-root-project '(ede-project eieio-instance-tracker) "ede/cpp-root" "EDE cpp-root project class.\nEach directory needs a project file to control it.")

;;;### (autoloads "actual autoloads are elsewhere" "ede/cpp-root"
;;;;;;  "cpp-root.el" (0 0 0 0))
;;; Generated autoloads from cpp-root.el

(register-definition-prefixes "ede/cpp-root" '("ede-cpp-root-"))

;;;***

;;;***

;;;### (autoloads nil "ede/custom" "custom.el" "7171a9c09faf77df543adcbae7527b0b")
;;; Generated autoloads from custom.el

(autoload 'ede-customize-project "ede/custom" "\
Edit fields of the current project through EIEIO & Custom." t nil)

(defalias 'customize-project #'ede-customize-project)

(autoload 'ede-customize-current-target "ede/custom" "\
Edit fields of the current target through EIEIO & Custom." t nil)

(defalias 'customize-target #'ede-customize-current-target)

(autoload 'ede-project-sort-targets "ede/custom" "\
Create a custom-like buffer for sorting targets of current project." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/custom" "custom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from custom.el

(register-definition-prefixes "ede/custom" '("ede-" "eieio-ede-old-variables"))

;;;***

;;;***

;;;### (autoloads nil "ede/dired" "dired.el" "bec9772973bb917c33ae4f48ed0c44b3")
;;; Generated autoloads from dired.el

(autoload 'ede-dired-minor-mode "ede/dired" "\
A minor mode that should only be activated in DIRED buffers.

This is a minor mode.  If called interactively, toggle the `EDE-Dired
minor mode' mode.  If the prefix argument is positive, enable the
mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `ede-dired-minor-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/dired" "dired.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dired.el

(register-definition-prefixes "ede/dired" '("ede-dired-"))

;;;***

;;;***

;;;### (autoloads nil "ede/emacs" "emacs.el" "f4ef666755a8423c38cc94e23e570ba8")
;;; Generated autoloads from emacs.el

(ede-add-project-autoload (make-instance 'ede-project-autoload :name "EMACS ROOT" :file 'ede/emacs :proj-file "src/emacs.c" :load-type 'ede-emacs-load :class-sym 'ede-emacs-project :new-p nil :safe-p t) 'unique)

;;;### (autoloads "actual autoloads are elsewhere" "ede/emacs" "emacs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emacs.el

(register-definition-prefixes "ede/emacs" '("ede-emacs-"))

;;;***

;;;***

;;;### (autoloads nil "ede/files" "files.el" "daa2129c45b37f212b108d6bdfbcea95")
;;; Generated autoloads from files.el

(autoload 'ede-find-file "ede/files" "\
Find FILE in project.  FILE can be specified without a directory.
There is no completion at the prompt.  FILE is searched for within
the current EDE project.

\(fn FILE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/files" "files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from files.el

(register-definition-prefixes "ede/files" '("ede-"))

;;;***

;;;***

;;;### (autoloads nil "ede/generic" "generic.el" "d72bf563d5ebffeed1434c9cad6c027b")
;;; Generated autoloads from generic.el

(autoload 'ede-enable-generic-projects "ede/generic" "\
Enable generic project loaders." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/generic"
;;;;;;  "generic.el" (0 0 0 0))
;;; Generated autoloads from generic.el

(register-definition-prefixes "ede/generic" '("ede-generic-"))

;;;***

;;;***

;;;### (autoloads nil "ede/linux" "linux.el" "0742f0d426beaf958d5c8bd8ca736b76")
;;; Generated autoloads from linux.el

(autoload 'ede-linux-load "ede/linux" "\
Return a Linux Project object if there is a match.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, since there is only one project.

\(fn DIR &optional ROOTPROJ)" nil nil)

(ede-add-project-autoload (make-instance 'ede-project-autoload :name "LINUX ROOT" :file 'ede/linux :proj-file "scripts/ver_linux" :load-type 'ede-linux-load :class-sym 'ede-linux-project :new-p nil :safe-p t) 'unique)

;;;### (autoloads "actual autoloads are elsewhere" "ede/linux" "linux.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from linux.el

(register-definition-prefixes "ede/linux" '("ede-linux-" "project-linux-"))

;;;***

;;;***

;;;### (autoloads nil "ede/locate" "locate.el" "49c06f90ea2e8d55d1805859caf3d5bb")
;;; Generated autoloads from locate.el

(autoload 'ede-enable-locate-on-project "ede/locate" "\
Enable an EDE locate feature on PROJECT.
Attempt to guess which project locate style to use
based on `ede-locate-setup-options'.

\(fn &optional PROJECT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/locate" "locate.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from locate.el

(register-definition-prefixes "ede/locate" '("ede-locate-"))

;;;***

;;;***

;;;### (autoloads nil "ede/make" "make.el" "dbe8735fcd1c30cf750e50017e4ec4e8")
;;; Generated autoloads from make.el

(autoload 'ede-make-check-version "ede/make" "\
Check the version of GNU Make installed.
The check passes if the MAKE version is no high enough, or if it
is not GNU make.
If NOERROR is non-nil, return t for success, nil for failure.
If NOERROR is nil, then throw an error on failure.  Return t otherwise.

\(fn &optional NOERROR)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/make" "make.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from make.el

(register-definition-prefixes "ede/make" '("ede-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ede/shell" "shell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from shell.el

(register-definition-prefixes "ede/shell" '("ede-shell-run-command"))

;;;***

;;;### (autoloads nil "ede/speedbar" "speedbar.el" "42b7fe61912c7cc62eed10ff2e62fbab")
;;; Generated autoloads from speedbar.el

(autoload 'ede-speedbar-file-setup "ede/speedbar" "\
Setup some keybindings in the Speedbar File display." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/speedbar"
;;;;;;  "speedbar.el" (0 0 0 0))
;;; Generated autoloads from speedbar.el

(register-definition-prefixes "ede/speedbar" '("ede-"))

;;;***

;;;***

;;;### (autoloads nil "ede/system" "system.el" "44cd65c8cada5ddee883400ac38f74ce")
;;; Generated autoloads from system.el

(autoload 'ede-web-browse-home "ede/system" "\
Browse the website of the current project." t nil)

(autoload 'ede-edit-web-page "ede/system" "\
Edit the web site for this project." t nil)

(autoload 'ede-upload-distribution "ede/system" "\
Upload the current distribution to the correct location.
Use /user@ftp.site.com: file names for FTP sites.
Download tramp, and use /r:machine: for names on remote sites w/out FTP access." t nil)

(autoload 'ede-upload-html-documentation "ede/system" "\
Upload the current distributions documentation as HTML.
Use /user@ftp.site.com: file names for FTP sites.
Download tramp, and use /r:machine: for names on remote sites w/out FTP access." t nil)

(autoload 'ede-vc-project-directory "ede/system" "\
Run `vc-dir' on the current project." t nil)

;;;***

;;;### (autoloads nil "ede/util" "util.el" "20e119f0f1e78ea0e36da304a382d3aa")
;;; Generated autoloads from util.el

(autoload 'ede-update-version "ede/util" "\
Update the current projects main version number.
Argument NEWVERSION is the version number to use in the current project.

\(fn NEWVERSION)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ede/util" "util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from util.el

(register-definition-prefixes "ede/util" '("ede-make-buffer-writable"))

;;;***

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
