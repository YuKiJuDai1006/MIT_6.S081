;;; esh-groups.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "em-alias" "em-alias.el" "5c641bad510e924e002ce1364850989d")
;;; Generated autoloads from em-alias.el

(defgroup eshell-alias nil "\
Command aliases allow for easy definition of alternate commands." :tag "Command aliases" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-alias" "em-alias.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-alias.el

(register-definition-prefixes "em-alias" '("eshell" "pcomplete/eshell-mode/alias"))

;;;***

;;;***

;;;### (autoloads nil "em-banner" "em-banner.el" "0f11189dcabe3947440bb76f25d341b6")
;;; Generated autoloads from em-banner.el

(defgroup eshell-banner nil "\
This sample module displays a welcome banner at login.
It exists so that others wishing to create their own Eshell extension
modules may have a simple template to begin with." :tag "Login banner" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-banner" "em-banner.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-banner.el

(register-definition-prefixes "em-banner" '("eshell-banner-"))

;;;***

;;;***

;;;### (autoloads nil "em-basic" "em-basic.el" "8aa206afd69bf8da4330237d8ae9dc71")
;;; Generated autoloads from em-basic.el

(defgroup eshell-basic nil "\
The \"basic\" code provides a set of convenience functions which
are traditionally considered shell builtins.  Since all of the
functionality provided by them is accessible through Lisp, they are
not really builtins at all, but offer a command-oriented way to do the
same thing." :tag "Basic shell commands" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-basic" "em-basic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-basic.el

(register-definition-prefixes "em-basic" '("eshell"))

;;;***

;;;***

;;;### (autoloads nil "em-cmpl" "em-cmpl.el" "554155357b7e76022bbc8311e06e9c73")
;;; Generated autoloads from em-cmpl.el

(defgroup eshell-cmpl nil "\
This module provides a programmable completion function bound to
the TAB key, which allows for completing command names, file names,
variable names, arguments, etc." :tag "Argument completion" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-cmpl" "em-cmpl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-cmpl.el

(register-definition-prefixes "em-cmpl" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-dirs" "em-dirs.el" "1f78a78431be522aa3cb4fbd04ab24d6")
;;; Generated autoloads from em-dirs.el

(defgroup eshell-dirs nil "\
Directory navigation involves changing directories, examining the
current directory, maintaining a directory stack, and also keeping
track of a history of the last directory locations the user was in.
Emacs does provide standard Lisp definitions of `pwd' and `cd', but
they lack somewhat in feel from the typical shell equivalents." :tag "Directory navigation" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-dirs" "em-dirs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-dirs.el

(register-definition-prefixes "em-dirs" '("eshell"))

;;;***

;;;***

;;;### (autoloads nil "em-glob" "em-glob.el" "4d2839ebc942c4189c8fe19d1e8c298a")
;;; Generated autoloads from em-glob.el

(defgroup eshell-glob nil "\
This module provides extended globbing syntax, similar what is used
by zsh for filename generation." :tag "Extended filename globbing" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-glob" "em-glob.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-glob.el

(register-definition-prefixes "em-glob" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-hist" "em-hist.el" "2bdc6db0e70004afb4c22654c2bb97d8")
;;; Generated autoloads from em-hist.el

(defgroup eshell-hist nil "\
This module provides command history management." :tag "History list management" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-hist" "em-hist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-hist.el

(register-definition-prefixes "em-hist" '("eshell"))

;;;***

;;;***

;;;### (autoloads nil "em-ls" "em-ls.el" "baef22d7b3e5680509f7fb80c98579c7")
;;; Generated autoloads from em-ls.el

(defgroup eshell-ls nil "\
This module implements the \"ls\" utility fully in Lisp.
If it is passed any unrecognized command switches, it will revert
to the operating system's version.  This version of \"ls\" uses
text properties to colorize its output based on the setting of
`eshell-ls-use-colors'." :tag "Implementation of `ls' in Lisp" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-ls" "em-ls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-ls.el

(register-definition-prefixes "em-ls" '("eshell"))

;;;***

;;;***

;;;### (autoloads nil "em-pred" "em-pred.el" "d909d65a4adbebe819a3fa1603951efe")
;;; Generated autoloads from em-pred.el

(defgroup eshell-pred nil "\
This module allows for predicates to be applied to globbing
patterns (similar to zsh), in addition to string modifiers which can
be applied either to globbing results, variable references, or just
ordinary strings." :tag "Value modifiers and predicates" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-pred" "em-pred.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-pred.el

(register-definition-prefixes "em-pred" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-prompt" "em-prompt.el" "cbd3a595b07eb7e15f96428a8d502d77")
;;; Generated autoloads from em-prompt.el

(defgroup eshell-prompt nil "\
This module provides command prompts, and navigation between them,
as is common with most shells." :tag "Command prompts" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-prompt" "em-prompt.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-prompt.el

(register-definition-prefixes "em-prompt" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-rebind" "em-rebind.el" "190eca71bdc03158402a0b9f29583c1c")
;;; Generated autoloads from em-rebind.el

(defgroup eshell-rebind nil "\
This module allows for special keybindings that only take effect
while the point is in a region of input text.  By default, it binds
C-a to move to the beginning of the input text (rather than just the
beginning of the line), and C-p and C-n to move through the input
history, C-u kills the current input text, etc.  It also, if
`eshell-confine-point-to-input' is non-nil, does not allow certain
commands to cause the point to leave the input area, such as
`backward-word', `previous-line', etc.  This module intends to mimic
the behavior of normal shells while the user editing new input text." :tag "Rebind keys at input" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-rebind" "em-rebind.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-rebind.el

(register-definition-prefixes "em-rebind" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-script" "em-script.el" "0afc5f8da685a8682ad84da6a1148e57")
;;; Generated autoloads from em-script.el

(defgroup eshell-script nil "\
This module allows for the execution of files containing Eshell
commands, as a script file." :tag "Running script files." :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-script" "em-script.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-script.el

(register-definition-prefixes "em-script" '("eshell"))

;;;***

;;;***

;;;### (autoloads nil "em-smart" "em-smart.el" "5e1467e04d9acf176762782499d892cf")
;;; Generated autoloads from em-smart.el

(defgroup eshell-smart nil "\
This module combines the facility of normal, modern shells with
some of the edit/review concepts inherent in the design of Plan 9's
9term.  See the docs for more details.

Most likely you will have to turn this option on and play around with
it to get a real sense of how it works." :tag "Smart display of output" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-smart" "em-smart.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-smart.el

(register-definition-prefixes "em-smart" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-term" "em-term.el" "fd52dee49c820835f4175d8d5a5ce239")
;;; Generated autoloads from em-term.el

(defgroup eshell-term nil "\
This module causes visual commands (e.g., `vi') to be executed by
the `term' package, which comes with Emacs.  This package handles most
of the ANSI control codes, allowing curses-based applications to run
within an Emacs window.  The variable `eshell-visual-commands' defines
which commands are considered visual in nature." :tag "Running visual commands" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-term" "em-term.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-term.el

(register-definition-prefixes "em-term" '("eshell-"))

;;;***

;;;***

;;;### (autoloads nil "em-tramp" "em-tramp.el" "ed024f14fca189c3e759665850f0706e")
;;; Generated autoloads from em-tramp.el

(defgroup eshell-tramp nil "\
This module defines commands that use TRAMP in a way that is
  not transparent to the user.  So far, this includes only the
  built-in su and sudo commands, which are not compatible with
  the full, external su and sudo commands, and require the user
  to understand how to use the TRAMP sudo method." :tag "TRAMP Eshell features" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-tramp" "em-tramp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-tramp.el

(register-definition-prefixes "em-tramp" '("eshell"))

;;;***

;;;***

;;;### (autoloads nil "em-unix" "em-unix.el" "0ad49acde800c9e5f9967c6b890db820")
;;; Generated autoloads from em-unix.el

(defgroup eshell-unix nil "\
This module defines many of the more common UNIX utilities as
aliases implemented in Lisp.  These include mv, ln, cp, rm, etc.  If
the user passes arguments which are too complex, or are unrecognized
by the Lisp variant, the external version will be called (if
available).  The only reason not to use them would be because they are
usually much slower.  But in several cases their tight integration
with Eshell makes them more versatile than their traditional cousins
\(such as being able to use `kill' to kill Eshell background processes
by name)." :tag "UNIX commands in Lisp" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-unix" "em-unix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-unix.el

(register-definition-prefixes "em-unix" '("eshell" "nil-blank-string"))

;;;***

;;;***

;;;### (autoloads nil "em-xtra" "em-xtra.el" "75e738108faec02bd9586b63f4ca56b5")
;;; Generated autoloads from em-xtra.el

(defgroup eshell-xtra nil "\
This module defines some extra alias functions which are entirely
optional.  They can be viewed as samples for how to write Eshell alias
functions, or as aliases which make some of Emacs's behavior more
naturally accessible within Emacs." :tag "Extra alias functions" :group 'eshell-module)

;;;### (autoloads "actual autoloads are elsewhere" "em-xtra" "em-xtra.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from em-xtra.el

(register-definition-prefixes "em-xtra" '("eshell/"))

;;;***

;;;***

(provide 'esh-groups)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; esh-groups.el ends here
