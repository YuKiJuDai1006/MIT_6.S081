;;; loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "semantic/analyze" "analyze.el" "0e404daed398a1990c29162bcd155b5f")
;;; Generated autoloads from analyze.el

(autoload 'semantic-analyze-current-context "semantic/analyze" "\
Analyze the current context at optional POSITION.
If called interactively, display interesting information about POSITION
in a separate buffer.
Returns an object based on symbol `semantic-analyze-context'.

This function can be overridden with the symbol `analyze-context'.
When overriding this function, your override will be called while
cursor is at POSITION.  In addition, your function will not be called
if a cached copy of the return object is found.

\(fn &optional POSITION)" '("d") nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/analyze"
;;;;;;  "analyze.el" (0 0 0 0))
;;; Generated autoloads from analyze.el

(register-definition-prefixes "semantic/analyze" '("semantic-a"))

;;;***

;;;***

;;;### (autoloads nil "semantic/analyze/complete" "analyze/complete.el"
;;;;;;  "27a541b25acfba9fa99f537ee7fac353")
;;; Generated autoloads from analyze/complete.el

(autoload 'semantic-analyze-type-constants "semantic/analyze/complete" "\
For the tag TYPE, return any constant symbols of TYPE.
Used as options when completing.

\(fn TYPE)" nil nil)

(autoload 'semantic-analyze-possible-completions "semantic/analyze/complete" "\
Return a list of semantic tags which are possible completions.
CONTEXT is either a position (such as point), or a precalculated
context.  Passing in a context is useful if the caller also needs
to access parts of the analysis.
The remaining FLAGS arguments are passed to the mode specific completion engine.
Bad flags should be ignored by modes that don't use them.
See `semantic-analyze-possible-completions-default' for details
on the default FLAGS.

Completions run through the following filters:
  * Elements currently in scope
  * Constants currently in scope
  * Elements match the :prefix in the CONTEXT.
  * Type of the completion matches the type of the context.
Context type matching can identify the following:
  * No specific type
  * Assignment into a variable of some type.
  * Argument to a function with type constraints.
When called interactively, displays the list of possible completions
in a buffer.

\(fn CONTEXT &rest FLAGS)" '("d") nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/analyze/complete"
;;;;;;  "analyze/complete.el" (0 0 0 0))
;;; Generated autoloads from analyze/complete.el

(register-definition-prefixes "semantic/analyze/complete" '("semantic-analyze-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/analyze/refs" "analyze/refs.el" "389b9d4b4583fb39cde8722f02102ac0")
;;; Generated autoloads from analyze/refs.el

(autoload 'semantic-analyze-current-tag "semantic/analyze/refs" "\
Analyze the tag under point." t nil)

(autoload 'semantic-analyze-proto-impl-toggle "semantic/analyze/refs" "\
Toggle between the implementation, and a prototype of tag under point." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/analyze/refs"
;;;;;;  "analyze/refs.el" (0 0 0 0))
;;; Generated autoloads from analyze/refs.el

(register-definition-prefixes "semantic/analyze/refs" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/bovine" "bovine.el" "61f4055fdcd243cd982d7c35d865c2a0")
;;; Generated autoloads from bovine.el

(autoload 'semantic-bovinate-stream "semantic/bovine" "\
Bovinate STREAM, starting at the first NONTERMINAL rule.
Use `bovine-toplevel' if NONTERMINAL is not provided.
This is the core routine for converting a stream into a table.
Return the list (STREAM SEMANTIC-STREAM) where STREAM are those
elements of STREAM that have not been used.  SEMANTIC-STREAM is the
list of semantic tokens found.

\(fn STREAM &optional NONTERMINAL)" nil nil)

(defalias 'semantic-parse-stream-default #'semantic-bovinate-stream)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/bovine"
;;;;;;  "bovine.el" (0 0 0 0))
;;; Generated autoloads from bovine.el

(register-definition-prefixes "semantic/bovine" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/bovine/c" "bovine/c.el" "d3be9498fea1091d4d32a463351c31ed")
;;; Generated autoloads from bovine/c.el

(autoload 'semantic-default-c-setup "semantic/bovine/c" "\
Set up a buffer for semantic parsing of the C language." nil nil)

(autoload 'semantic-c-add-preprocessor-symbol "semantic/bovine/c" "\
Add a preprocessor symbol SYM with a REPLACEMENT value.

\(fn SYM REPLACEMENT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/bovine/c"
;;;;;;  "bovine/c.el" (0 0 0 0))
;;; Generated autoloads from bovine/c.el

(register-definition-prefixes "semantic/bovine/c" '("c-mode" "semantic"))

;;;***

;;;***

;;;### (autoloads nil "semantic/bovine/el" "bovine/el.el" "d557bd422b5d7785b46dbb7cf41a6759")
;;; Generated autoloads from bovine/el.el

(autoload 'semantic-default-elisp-setup "semantic/bovine/el" "\
Setup hook function for Emacs Lisp files and Semantic." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/bovine/el"
;;;;;;  "bovine/el.el" (0 0 0 0))
;;; Generated autoloads from bovine/el.el

(register-definition-prefixes "semantic/bovine/el" '("emacs-lisp-mode" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/bovine/gcc" "bovine/gcc.el" "6dfd12a4128a0a356cd84e54fb0bd724")
;;; Generated autoloads from bovine/gcc.el

(autoload 'semantic-gcc-setup "semantic/bovine/gcc" "\
Setup Semantic C/C++ parsing based on GCC output." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/bovine/gcc"
;;;;;;  "bovine/gcc.el" (0 0 0 0))
;;; Generated autoloads from bovine/gcc.el

(register-definition-prefixes "semantic/bovine/gcc" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/bovine/make" "bovine/make.el" "90948ad68bca3c07ecfd9de70e7c80e4")
;;; Generated autoloads from bovine/make.el

(autoload 'semantic-default-make-setup "semantic/bovine/make" "\
Set up a Makefile buffer for parsing with semantic." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/bovine/make"
;;;;;;  "bovine/make.el" (0 0 0 0))
;;; Generated autoloads from bovine/make.el

(register-definition-prefixes "semantic/bovine/make" '("makefile-mode" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/bovine/scm" "bovine/scm.el" "fc6c3378c3e8af3e07f9d45318bb73af")
;;; Generated autoloads from bovine/scm.el

(autoload 'semantic-default-scheme-setup "semantic/bovine/scm" "\
Setup hook function for Emacs Lisp files and Semantic." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/bovine/scm"
;;;;;;  "bovine/scm.el" (0 0 0 0))
;;; Generated autoloads from bovine/scm.el

(register-definition-prefixes "semantic/bovine/scm" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/complete" "complete.el" "e6d02624ce78998011cd97c4222d8043")
;;; Generated autoloads from complete.el

(defvar semantic-displayer-tooltip-mode 'standard "\
Mode for the tooltip inline completion.

Standard: Show only `semantic-displayer-tooltip-initial-max-tags'
number of completions initially.  Pressing TAB will show the
extended set.

Quiet: Only show completions when we have narrowed all
possibilities down to a maximum of
`semantic-displayer-tooltip-initial-max-tags' tags.  Pressing TAB
multiple times will also show completions.

Verbose: Always show all completions available.

The absolute maximum number of completions for all mode is
determined through `semantic-displayer-tooltip-max-tags'.")

(custom-autoload 'semantic-displayer-tooltip-mode "semantic/complete" t)

(defvar semantic-displayer-tooltip-initial-max-tags 5 "\
Maximum number of tags to be displayed initially.
See doc-string of `semantic-displayer-tooltip-mode' for details.")

(custom-autoload 'semantic-displayer-tooltip-initial-max-tags "semantic/complete" t)

(autoload 'semantic-complete-jump-local "semantic/complete" "\
Jump to a local semantic symbol." t nil)

(autoload 'semantic-complete-jump "semantic/complete" "\
Jump to a semantic symbol." t nil)

(autoload 'semantic-complete-jump-local-members "semantic/complete" "\
Jump to a semantic symbol." t nil)

(autoload 'semantic-complete-analyze-and-replace "semantic/complete" "\
Perform prompt completion to do in buffer completion.
`semantic-analyze-possible-completions' is used to determine the
possible values.
The minibuffer is used to perform the completion.
The result is inserted as a replacement of the text that was there." t nil)

(autoload 'semantic-complete-analyze-inline "semantic/complete" "\
Perform prompt completion to do in buffer completion.
`semantic-analyze-possible-completions' is used to determine the
possible values.
The function returns immediately, leaving the buffer in a mode that
will perform the completion.
Configure `semantic-complete-inline-analyzer-displayer-class' to change
how completion options are displayed." t nil)

(autoload 'semantic-complete-analyze-inline-idle "semantic/complete" "\
Perform prompt completion to do in buffer completion.
`semantic-analyze-possible-completions' is used to determine the
possible values.
The function returns immediately, leaving the buffer in a mode that
will perform the completion.
Configure `semantic-complete-inline-analyzer-idle-displayer-class'
to change how completion options are displayed." t nil)

(autoload 'semantic-complete-self-insert "semantic/complete" "\
Like `self-insert-command', but does completion afterwards.
ARG is passed to `self-insert-command'.  If ARG is nil,
use `semantic-complete-analyze-inline' to complete.

\(fn ARG)" t nil)

(autoload 'semantic-complete-inline-project "semantic/complete" "\
Perform inline completion for any symbol in the current project.
`semantic-analyze-possible-completions' is used to determine the
possible values.
The function returns immediately, leaving the buffer in a mode that
will perform the completion." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/complete"
;;;;;;  "complete.el" (0 0 0 0))
;;; Generated autoloads from complete.el

(register-definition-prefixes "semantic/complete" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/ctxt" "ctxt.el" "389f480a1205c82f4b2eb7ec5d80fb78")
;;; Generated autoloads from ctxt.el

(autoload 'semantic-ctxt-current-mode "semantic/ctxt" "\
Return the major mode active at POINT.
POINT defaults to the value of point in current buffer.
You should override this function in multiple mode buffers to
determine which major mode apply at point.

\(fn &optional POINT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/ctxt"
;;;;;;  "ctxt.el" (0 0 0 0))
;;; Generated autoloads from ctxt.el

(register-definition-prefixes "semantic/ctxt" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/db" "db.el" "f334a587d4c0b8d953252150cf033ac8")
;;; Generated autoloads from db.el

(defvar-local semanticdb-current-database nil "\
For a given buffer, this is the currently active database.")

(defvar-local semanticdb-current-table nil "\
For a given buffer, this is the currently active database table.")

(autoload 'semanticdb-file-table-object "semantic/db" "\
Return a semanticdb table belonging to FILE, make it up to date.
If file has database tags available in the database, return it.
If file does not have tags available, and DONTLOAD is nil,
then load the tags for FILE, and create a new table object for it.
DONTLOAD does not affect the creation of new database objects.

\(fn FILE &optional DONTLOAD)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/db"
;;;;;;  "db.el" (0 0 0 0))
;;; Generated autoloads from db.el

(register-definition-prefixes "semantic/db" '("semanticdb-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/db-file" "db-file.el" "991e785e3961070ed3c1b084b8741aec")
;;; Generated autoloads from db-file.el

(eieio-defclass-autoload 'semanticdb-project-database-file '(semanticdb-project-database eieio-persistent) "semantic/db-file" "Database of file tables saved to disk.")

;;;### (autoloads "actual autoloads are elsewhere" "semantic/db-file"
;;;;;;  "db-file.el" (0 0 0 0))
;;; Generated autoloads from db-file.el

(register-definition-prefixes "semantic/db-file" '("semanticdb-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/db-find" "db-find.el" "4fd341c2371ac79dad3a723f3d77bef1")
;;; Generated autoloads from db-find.el

(defvar semanticdb-find-default-throttle '(local project unloaded system recursive) "\
The default throttle for `semanticdb-find' routines.
The throttle controls how detailed the list of database
tables is for a symbol lookup.  The value is a list with
the following keys:
  `file'       - The file the search is being performed from.
                 This option is here for completeness only, and
                 is assumed to always be on.
  `local'      - Tables from the same local directory are included.
                 This includes files directly referenced by a file name
                 which might be in a different directory.
  `project'    - Tables from the same local project are included
                 If `project' is specified, then `local' is assumed.
  `unloaded'   - If a table is not in memory, load it.  If it is not cached
                 on disk either, get the source, parse it, and create
                 the table.
  `system'     - Tables from system databases.  These are specifically
                 tables from system header files, or language equivalent.
  `recursive'  - For include based searches, includes tables referenced
                 by included files.
  `omniscience' - Included system databases which are omniscience, or
                 somehow know everything.  Omniscience databases are found
                 in `semanticdb-project-system-databases'.
                 The Emacs Lisp system DB is an omniscience database.")

(custom-autoload 'semanticdb-find-default-throttle "semantic/db-find" t)

(autoload 'semanticdb-find-translate-path "semantic/db-find" "\
Translate PATH into a list of semantic tables.
Path translation involves identifying the PATH input argument
in one of the following ways:
  nil - Take the current buffer, and use its include list
  buffer - Use that buffer's include list.
  filename - Use that file's include list.  If the file is not
      in a buffer, see of there is a semanticdb table for it.  If
      not, read that file into a buffer.
  tag - Get that tag's buffer of file file.  See above.
  table - Search that table, and its include list.
  find result - Search the results of a previous find.

In addition, once the base path is found, there is the possibility of
each added table adding yet more tables to the path, so this routine
can return a lengthy list.

If argument BRUTISH is non-nil, then instead of using the include
list, use all tables found in the parent project of the table
identified by translating PATH.  Such searches use brute force to
scan every available table.

The return value is a list of objects of type `semanticdb-table' or
their children.  In the case of passing in a find result, the result
is returned unchanged.

This routine uses `semanticdb-find-table-for-include' to translate
specific include tags into a semanticdb table.

Note: When searching using a non-brutish method, the list of
included files will be cached between runs.  Database-references
are used to track which files need to have their include lists
refreshed when things change.  See `semanticdb-ref-test'.

Note for overloading:  If you opt to overload this function for your
major mode, and your routine takes a long time, be sure to call

 (semantic-throw-on-input \\='your-symbol-here)

so that it can be called from the idle work handler.

\(fn PATH BRUTISH)" nil nil)

(autoload 'semanticdb-find-table-for-include "semantic/db-find" "\
For a single INCLUDETAG found in TABLE, find a `semanticdb-table' object.
INCLUDETAG is a semantic TAG of class `include'.
TABLE is a semanticdb table that identifies where INCLUDETAG came from.
TABLE is optional if INCLUDETAG has an overlay of :filename attribute.

\(fn INCLUDETAG &optional TABLE)" nil nil)

(autoload 'semanticdb-find-test-translate-path "semantic/db-find" "\
Call and output results of `semanticdb-find-translate-path'.
With ARG non-nil, specify a BRUTISH translation.
See `semanticdb-find-default-throttle' and `semanticdb-project-roots'
for details on how this list is derived.

\(fn &optional ARG)" t nil)

(autoload 'semanticdb-find-adebug-lost-includes "semantic/db-find" "\
Translate the current path, then display the lost includes.
Examines the variable `semanticdb-find-lost-includes'." t nil)

(autoload 'semanticdb-strip-find-results "semantic/db-find" "\
Strip a semanticdb search RESULTS to exclude objects.
This makes it appear more like the results of a `semantic-find-' call.
Optional FIND-FILE-MATCH loads all files associated with RESULTS
into buffers.  This has the side effect of enabling `semantic-tag-buffer' to
return a value.
If FIND-FILE-MATCH is `name', then only the filename is stored
in each tag instead of loading each file into a buffer.
If the input RESULTS are not going to be used again, and if
FIND-FILE-MATCH is nil, you can use `semanticdb-fast-strip-find-results'
instead.

\(fn RESULTS &optional FIND-FILE-MATCH)" nil nil)

(autoload 'semanticdb-find-result-length "semantic/db-find" "\
Number of tags found in RESULT.

\(fn RESULT)" nil nil)

(autoload 'semanticdb-find-result-nth "semantic/db-find" "\
In RESULT, return the Nth search result.
This is a 0 based search result, with the first match being element 0.

The returned value is a cons cell: (TAG . TABLE) where TAG
is the tag at the Nth position.  TABLE is the semanticdb table where
the TAG was found.  Sometimes TABLE can be nil.

\(fn RESULT N)" nil nil)

(autoload 'semanticdb-find-result-nth-in-buffer "semantic/db-find" "\
In RESULT, return the Nth search result.
Like `semanticdb-find-result-nth', except that only the TAG
is returned, and the buffer it is found it will be made current.
If the result tag has no position information, the originating buffer
is still made current.

\(fn RESULT N)" nil nil)

(autoload 'semanticdb-find-tags-by-name "semantic/db-find" "\
Search for all tags matching NAME on PATH.
See `semanticdb-find-translate-path' for details on PATH.
FIND-FILE-MATCH indicates that any time a match is found, the file
associated with that tag should be loaded into a buffer.

\(fn NAME &optional PATH FIND-FILE-MATCH)" nil nil)

(autoload 'semanticdb-find-tags-by-name-regexp "semantic/db-find" "\
Search for all tags matching REGEXP on PATH.
See `semanticdb-find-translate-path' for details on PATH.
FIND-FILE-MATCH indicates that any time a match is found, the file
associated with that tag should be loaded into a buffer.

\(fn REGEXP &optional PATH FIND-FILE-MATCH)" nil nil)

(autoload 'semanticdb-find-tags-for-completion "semantic/db-find" "\
Search for all tags matching PREFIX on PATH.
See `semanticdb-find-translate-path' for details on PATH.
FIND-FILE-MATCH indicates that any time a match is found, the file
associated with that tag should be loaded into a buffer.

\(fn PREFIX &optional PATH FIND-FILE-MATCH)" nil nil)

(autoload 'semanticdb-find-tags-by-class "semantic/db-find" "\
Search for all tags of CLASS on PATH.
See `semanticdb-find-translate-path' for details on PATH.
FIND-FILE-MATCH indicates that any time a match is found, the file
associated with that tag should be loaded into a buffer.

\(fn CLASS &optional PATH FIND-FILE-MATCH)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/db-find"
;;;;;;  "db-find.el" (0 0 0 0))
;;; Generated autoloads from db-find.el

(register-definition-prefixes "semantic/db-find" '("semanticdb-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/db-global" "db-global.el" "bb0095c0e24b98962a4c362576bb1458")
;;; Generated autoloads from db-global.el

(autoload 'semanticdb-enable-gnu-global-databases "semantic/db-global" "\
Enable the use of the GNU Global SemanticDB back end for all files of MODE.
This will add an instance of a GNU Global database to each buffer
in a GNU Global supported hierarchy.

Two sanity checks are performed to assure (a) that GNU global program exists
and (b) that the GNU global program version is compatibility with the database
version.  If optional NOERROR is nil, then an error may be signaled on version
mismatch.  If NOERROR is not nil, then no error will be signaled.  Instead
return value will indicate success or failure with non-nil or nil respective
values.

\(fn MODE &optional NOERROR)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/db-global"
;;;;;;  "db-global.el" (0 0 0 0))
;;; Generated autoloads from db-global.el

(register-definition-prefixes "semantic/db-global" '("semanticdb-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/db-mode" "db-mode.el" "b043681a602f85028f04e617fd592cab")
;;; Generated autoloads from db-mode.el

(autoload 'semanticdb-minor-mode-p "semantic/db-mode" "\
Return non-nil if `semanticdb-minor-mode' is active." nil nil)

(defvar global-semanticdb-minor-mode nil "\
Non-nil if Global Semanticdb minor mode is enabled.
See the `global-semanticdb-minor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semanticdb-minor-mode'.")

(custom-autoload 'global-semanticdb-minor-mode "semantic/db-mode" nil)

(autoload 'global-semanticdb-minor-mode "semantic/db-mode" "\
Toggle Semantic DB mode.

This is a minor mode.  If called interactively, toggle the `Global
Semanticdb minor mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semanticdb-minor-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

In Semantic DB mode, Semantic parsers store results in a
database, which can be saved for future Emacs sessions.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/db-mode"
;;;;;;  "db-mode.el" (0 0 0 0))
;;; Generated autoloads from db-mode.el

(register-definition-prefixes "semantic/db-mode" '("semanticdb-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/db-typecache" "db-typecache.el" "a40609ea4220f3dd636c49a4264d9a66")
;;; Generated autoloads from db-typecache.el

(eieio-defclass-autoload 'semanticdb-typecache 'nil "semantic/db-typecache" "Structure for maintaining a typecache.")

(eieio-defclass-autoload 'semanticdb-database-typecache '(semanticdb-abstract-db-cache) "semantic/db-typecache" "Structure for maintaining a typecache.")

(autoload 'semanticdb-typecache-find "semantic/db-typecache" "\
Search the typecache for TYPE in PATH.
If type is a string, split the string, and search for the parts.
If type is a list, treat the type as a pre-split string.
PATH can be nil for the current buffer, or a semanticdb table.
FIND-FILE-MATCH is non-nil to force all found tags to be loaded into a buffer.

\(fn TYPE &optional PATH FIND-FILE-MATCH)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/db-typecache"
;;;;;;  "db-typecache.el" (0 0 0 0))
;;; Generated autoloads from db-typecache.el

(register-definition-prefixes "semantic/db-typecache" '("semanticdb-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/debug" "debug.el" "790d7b9d08e493d8adf35024d13253ad")
;;; Generated autoloads from debug.el

(defvar-local semantic-debug-parser-source nil "\
For any buffer, the file name (no path) of the parser.
This would be a parser for a specific language, not the source
to one of the parser generators.")

(defvar-local semantic-debug-parser-class nil "\
Class to create when building a debug parser object.")

(defvar-local semantic-debug-parser-debugger-source nil "\
Location of the debug parser class.")

(autoload 'semantic-debug "semantic/debug" "\
Parse the current buffer and run in debug mode." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/debug"
;;;;;;  "debug.el" (0 0 0 0))
;;; Generated autoloads from debug.el

(register-definition-prefixes "semantic/debug" '("semantic-debug-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/decorate/include" "decorate/include.el"
;;;;;;  "e96d5576e731becc6fa130ad96f5253a")
;;; Generated autoloads from decorate/include.el

(autoload 'semantic-decoration-include-visit "semantic/decorate/include" "\
Visit the included file at point." t nil)

(autoload 'semantic-decoration-unparsed-include-do-reset "semantic/decorate/include" "\
Do a reset of unparsed includes in the current buffer." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/decorate/include"
;;;;;;  "decorate/include.el" (0 0 0 0))
;;; Generated autoloads from decorate/include.el

(register-definition-prefixes "semantic/decorate/include" '("semantic-decoration-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/decorate/mode" "decorate/mode.el"
;;;;;;  "874bc2ac0b32fda5b412ae9d727cca01")
;;; Generated autoloads from decorate/mode.el

(defvar global-semantic-decoration-mode nil "\
Non-nil if Global Semantic-Decoration mode is enabled.
See the `global-semantic-decoration-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-decoration-mode'.")

(custom-autoload 'global-semantic-decoration-mode "semantic/decorate/mode" nil)

(autoload 'global-semantic-decoration-mode "semantic/decorate/mode" "\
Toggle global use of option `semantic-decoration-mode'.
Decoration mode turns on all active decorations as specified
by `semantic-decoration-styles'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Decoration mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-decoration-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/decorate/mode"
;;;;;;  "decorate/mode.el" (0 0 0 0))
;;; Generated autoloads from decorate/mode.el

(register-definition-prefixes "semantic/decorate/mode" '("define-semantic-decoration-style" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/dep" "dep.el" "46995726e5a46c9837fe6c4e6ea80656")
;;; Generated autoloads from dep.el

(autoload 'semantic-add-system-include "semantic/dep" "\
Add a system include DIR to path for MODE.
Modifies a mode-local version of `semantic-dependency-system-include-path'.

Changes made by this function are not persistent.

\(fn DIR &optional MODE)" t nil)

(autoload 'semantic-remove-system-include "semantic/dep" "\
Add a system include DIR to path for MODE.
Modifies a mode-local version of `semantic-dependency-system-include-path'.

Changes made by this function are not persistent.

\(fn DIR &optional MODE)" t nil)

(autoload 'semantic-reset-system-include "semantic/dep" "\
Reset the system include list to empty for MODE.
Modifies a mode-local version of
`semantic-dependency-system-include-path'.

\(fn &optional MODE)" t nil)

(autoload 'semantic-customize-system-include-path "semantic/dep" "\
Customize the include path for this `major-mode'.
To create a customizable include path for a major MODE, use the
macro `defcustom-mode-local-semantic-dependency-system-include-path'.

\(fn &optional MODE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/dep"
;;;;;;  "dep.el" (0 0 0 0))
;;; Generated autoloads from dep.el

(register-definition-prefixes "semantic/dep" '("defcustom-mode-local-semantic-dependency-system-include-path" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/doc" "doc.el" "9aad7d0e0214fd257f030009c2b1c0b9")
;;; Generated autoloads from doc.el

(autoload 'semantic-documentation-for-tag "semantic/doc" "\
Find documentation from TAG and return it as a clean string.
TAG might have DOCUMENTATION set in it already.  If not, there may be
some documentation in a comment preceding TAG's definition which we
can look for.  When appropriate, this can be overridden by a language specific
enhancement.
Optional argument NOSNARF means return only the lexical analyzer token for it.
If NOSNARF is `lex', then only return the lex token.

\(fn &optional TAG NOSNARF)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/doc"
;;;;;;  "doc.el" (0 0 0 0))
;;; Generated autoloads from doc.el

(register-definition-prefixes "semantic/doc" '("semantic-doc"))

;;;***

;;;***

;;;### (autoloads nil "semantic/edit" "edit.el" "466952fe06f453160372e424d68a1246")
;;; Generated autoloads from edit.el

(autoload 'semantic-change-function "semantic/edit" "\
Provide a mechanism for semantic tag management.
Argument START, END, and LENGTH specify the bounds of the change.

\(fn START END LENGTH)" nil nil)

(autoload 'semantic-edits-incremental-parser "semantic/edit" "\
Incrementally reparse the current buffer.
Incremental parser allows semantic to only reparse those sections of
the buffer that have changed.  This function depends on
`semantic-edits-change-function-handle-changes' setting up change
overlays in the current buffer.  Those overlays are analyzed against
the semantic cache to see what needs to be changed." nil nil)

(defalias 'semantic-parse-changes-default #'semantic-edits-incremental-parser)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/edit"
;;;;;;  "edit.el" (0 0 0 0))
;;; Generated autoloads from edit.el

(register-definition-prefixes "semantic/edit" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/find" "find.el" "ca43d4ce107032b1ca387c5095a06ccd")
;;; Generated autoloads from find.el

(autoload 'semantic-find-tag-by-overlay "semantic/find" "\
Find all tags covering POSITIONORMARKER by using overlays.
If POSITIONORMARKER is nil, use the current point.
Optional BUFFER is used if POSITIONORMARKER is a number, otherwise the current
buffer is used.  This finds all tags covering the specified position
by checking for all overlays covering the current spot.  They are then sorted
from largest to smallest via the start location.

\(fn &optional POSITIONORMARKER BUFFER)" nil nil)

(autoload 'semantic-find-tag-by-overlay-in-region "semantic/find" "\
Find all tags which exist in whole or in part between START and END.
Uses overlays to determine position.
Optional BUFFER argument specifies the buffer to use.

\(fn START END &optional BUFFER)" nil nil)

(autoload 'semantic-find-tag-by-overlay-next "semantic/find" "\
Find the next tag after START in BUFFER.
If START is in an overlay, find the tag which starts next,
not the current tag.

\(fn &optional START BUFFER)" nil nil)

(autoload 'semantic-find-tag-by-overlay-prev "semantic/find" "\
Find the next tag before START in BUFFER.
If START is in an overlay, find the tag which starts next,
not the current tag.

\(fn &optional START BUFFER)" nil nil)

(autoload 'semantic-find-tag-parent-by-overlay "semantic/find" "\
Find the parent of TAG by overlays.
Overlays are a fast way of finding this information for active buffers.

\(fn TAG)" nil nil)

(autoload 'semantic-current-tag "semantic/find" "\
Return the current tag in the current buffer.
If there are more than one in the same location, return the
smallest tag.  Return nil if there is no tag here." nil nil)

(autoload 'semantic-current-tag-parent "semantic/find" "\
Return the current tags parent in the current buffer.
A tag's parent would be a containing structure, such as a type
containing a field.  Return nil if there is no parent." nil nil)

(autoload 'semantic-find-first-tag-by-name "semantic/find" "\
Find the first tag with NAME in TABLE.
NAME is a string.
TABLE is a semantic tags table.  See `semantic-something-to-tag-table'.
Respects `semantic-case-fold'.

\(fn NAME &optional TABLE)" nil nil)

(autoload 'semantic-find-tags-by-scope-protection "semantic/find" "\
Find all tags accessible by SCOPEPROTECTION.
SCOPEPROTECTION is a symbol which can be returned by the method
`semantic-tag-protection'.  A hard-coded order is used to determine a match.
PARENT is a tag representing the PARENT slot needed for
`semantic-tag-protection'.
TABLE is a list of tags (a subset of PARENT members) to scan.  If TABLE is nil,
the type members of PARENT are used.
See `semantic-tag-protected-p' for details on which tags are returned.

\(fn SCOPEPROTECTION PARENT &optional TABLE)" nil nil)

(autoload 'semantic-find-tags-included "semantic/find" "\
Find all tags in TABLE that are of the `include' class.
TABLE is a tag table.  See `semantic-something-to-tag-table'.

\(fn &optional TABLE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/find"
;;;;;;  "find.el" (0 0 0 0))
;;; Generated autoloads from find.el

(register-definition-prefixes "semantic/find" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/format" "format.el" "9a6b7ccf7c791a6829312d2aecde78b6")
;;; Generated autoloads from format.el

(autoload 'semantic-format-tag-name "semantic/format" "\
Return the name string describing TAG.
The name is the shortest possible representation.
Optional argument PARENT is the parent type if TAG is a detail.
Optional argument COLOR means highlight the prototype with font-lock colors.

\(fn TAG &optional PARENT COLOR)" nil nil)

(autoload 'semantic-format-tag-summarize "semantic/format" "\
Summarize TAG in a reasonable way.
Optional argument PARENT is the parent type if TAG is a detail.
Optional argument COLOR means highlight the prototype with font-lock colors.

\(fn TAG &optional PARENT COLOR)" nil nil)

(autoload 'semantic-format-tag-prototype "semantic/format" "\
Return a prototype for TAG.
This function should be overloaded, though it need not be used.
This is because it can be used to create code by language independent
tools.
Optional argument PARENT is the parent type if TAG is a detail.
Optional argument COLOR means highlight the prototype with font-lock colors.

\(fn TAG &optional PARENT COLOR)" nil nil)

(autoload 'semantic-format-tag-concise-prototype "semantic/format" "\
Return a concise prototype for TAG.
Optional argument PARENT is the parent type if TAG is a detail.
Optional argument COLOR means highlight the prototype with font-lock colors.

\(fn TAG &optional PARENT COLOR)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/format"
;;;;;;  "format.el" (0 0 0 0))
;;; Generated autoloads from format.el

(register-definition-prefixes "semantic/format" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/html" "html.el" "785ac6cce558be7c951440b3ae9e8830")
;;; Generated autoloads from html.el

(autoload 'semantic-default-html-setup "semantic/html" "\
Set up a buffer for parsing of HTML files." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/html"
;;;;;;  "html.el" (0 0 0 0))
;;; Generated autoloads from html.el

(register-definition-prefixes "semantic/html" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/ia" "ia.el" "caa6a23af8e2d0701025527f97ba1bf3")
;;; Generated autoloads from ia.el

(autoload 'semantic-ia-complete-symbol "semantic/ia" "\
Complete the current symbol at POS.
If POS is nil, default to point.
Completion options are calculated with `semantic-analyze-possible-completions'.

\(fn &optional POS)" t nil)

(autoload 'semantic-ia-complete-symbol-menu "semantic/ia" "\
Complete the current symbol via a menu based at POINT.
Completion options are calculated with `semantic-analyze-possible-completions'.

\(fn POINT)" t nil)

(autoload 'semantic-ia-complete-tip "semantic/ia" "\
Pop up a tooltip for completion at POINT.

\(fn POINT)" t nil)

(autoload 'semantic-ia-show-summary "semantic/ia" "\
Display a summary for the symbol under POINT.

\(fn POINT)" t nil)

(autoload 'semantic-ia-show-variants "semantic/ia" "\
Display a list of all variants for the symbol under POINT.

\(fn POINT)" t nil)

(autoload 'semantic-ia-fast-jump "semantic/ia" "\
Jump to the tag referred to by the code at POINT.
Uses `semantic-analyze-current-context' output to identify an accurate
origin of the code at point.

\(fn POINT)" t nil)

(autoload 'semantic-ia-fast-mouse-jump "semantic/ia" "\
Jump to the tag referred to by the point clicked on.
See `semantic-ia-fast-jump' for details on how it works.
 This command is meant to be bound to a mouse event.

\(fn EVT)" t nil)

(autoload 'semantic-ia-show-doc "semantic/ia" "\
Display the code-level documentation for the symbol at POINT.

\(fn POINT)" t nil)

(autoload 'semantic-ia-describe-class "semantic/ia" "\
Display all known parts for the datatype TYPENAME.
If the type in question is a class, all methods and other accessible
parts of the parent classes are displayed.

\(fn TYPENAME)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/ia"
;;;;;;  "ia.el" (0 0 0 0))
;;; Generated autoloads from ia.el

(register-definition-prefixes "semantic/ia" '("semantic-ia-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/ia-sb" "ia-sb.el" "bf8b45ec77323af2207e438d6078308c")
;;; Generated autoloads from ia-sb.el

(autoload 'semantic-speedbar-analysis "semantic/ia-sb" "\
Start Speedbar in semantic analysis mode.
The analyzer displays information about the current context, plus a smart
list of possible completions." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/ia-sb"
;;;;;;  "ia-sb.el" (0 0 0 0))
;;; Generated autoloads from ia-sb.el

(register-definition-prefixes "semantic/ia-sb" '("semantic-ia-s"))

;;;***

;;;***

;;;### (autoloads nil "semantic/idle" "idle.el" "4d3ab21a056b225a33555bb24d28e69c")
;;; Generated autoloads from idle.el

(autoload 'semantic-idle-scheduler-mode "semantic/idle" "\
Minor mode to auto parse buffer following a change.
When this mode is off, a buffer is only rescanned for tokens when
some command requests the list of available tokens.  When idle-scheduler
is enabled, Emacs periodically checks to see if the buffer is out of
date, and reparses while the user is idle (not typing.)

This is a minor mode.  If called interactively, toggle the
`Semantic-Idle-Scheduler mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `semantic-idle-scheduler-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\(fn &optional ARG)" t nil)

(defvar global-semantic-idle-scheduler-mode nil "\
Non-nil if Global Semantic-Idle-Scheduler mode is enabled.
See the `global-semantic-idle-scheduler-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-idle-scheduler-mode'.")

(custom-autoload 'global-semantic-idle-scheduler-mode "semantic/idle" nil)

(autoload 'global-semantic-idle-scheduler-mode "semantic/idle" "\
Toggle global use of option `semantic-idle-scheduler-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Idle-Scheduler mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-idle-scheduler-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The idle scheduler will automatically reparse buffers in idle
time, and then schedule other jobs setup with
`semantic-idle-scheduler-add'.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/idle"
;;;;;;  "idle.el" (0 0 0 0))
;;; Generated autoloads from idle.el

(register-definition-prefixes "semantic/idle" '("define-semantic-idle-service" "global-semantic-idle-summary-mode" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/imenu" "imenu.el" "28939cb3f34f4b8312c06c821dffac46")
;;; Generated autoloads from imenu.el

(defvar semantic-imenu-summary-function 'semantic-format-tag-abbreviate "\
Function to use when creating items in Imenu.
Some useful functions are found in `semantic-format-tag-functions'.")

(custom-autoload 'semantic-imenu-summary-function "semantic/imenu" t)

(defvar semantic-imenu-bucketize-file t "\
Non-nil if tags in a file are to be grouped into buckets.")

(custom-autoload 'semantic-imenu-bucketize-file "semantic/imenu" t)

(defvar semantic-imenu-expand-type-members t "\
Non-nil if types should have submenus with members in them.")

(custom-autoload 'semantic-imenu-expand-type-members "semantic/imenu" t)

(defvar-local semantic-imenu-expandable-tag-classes '(type) "\
List of expandable tag classes.
Tags of those classes will be given submenu with children.
By default, a `type' has interesting children.  In Texinfo, however, a
`section' has interesting children.")

(autoload 'semantic-create-imenu-index "semantic/imenu" "\
Create an imenu index for any buffer which supports Semantic.
Uses the output of the Semantic parser to create the index.
Optional argument STREAM is an optional stream of tags used to create menus.

\(fn &optional STREAM)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/imenu"
;;;;;;  "imenu.el" (0 0 0 0))
;;; Generated autoloads from imenu.el

(register-definition-prefixes "semantic/imenu" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/lex" "lex.el" "1755c0dd3a1dc25aa4d4dc6cc7315575")
;;; Generated autoloads from lex.el

(autoload 'semantic-lex "semantic/lex" "\
Lexically analyze text in the current buffer between START and END.
Optional argument DEPTH indicates at what level to scan over entire
lists.  The last argument, LENGTH specifies that `semantic-lex'
should only return LENGTH tokens.  The return value is a token stream.
Each element is a list, such of the form
  (symbol start-expression .  end-expression)
where SYMBOL denotes the token type.
See `semantic-lex-tokens' variable for details on token types.  END
does not mark the end of the text scanned, only the end of the
beginning of text scanned.  Thus, if a string extends past END, the
end of the return token will be larger than END.  To truly restrict
scanning, use `narrow-to-region'.

\(fn START END &optional DEPTH LENGTH)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/lex"
;;;;;;  "lex.el" (0 0 0 0))
;;; Generated autoloads from lex.el

(register-definition-prefixes "semantic/lex" '("define-lex" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/lex-spp" "lex-spp.el" "ff7dfaf851cf7d56bbe8beb01ce5f4fc")
;;; Generated autoloads from lex-spp.el

(autoload 'semantic-lex-spp-table-write-slot-value "semantic/lex-spp" "\
Write out the VALUE of a slot for EIEIO.
The VALUE is a spp lexical table.

\(fn VALUE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/lex-spp"
;;;;;;  "lex-spp.el" (0 0 0 0))
;;; Generated autoloads from lex-spp.el

(register-definition-prefixes "semantic/lex-spp" '("define-lex-spp-" "semantic-lex-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/mru-bookmark" "mru-bookmark.el" "48927456e7c38d1f60417573acdb9817")
;;; Generated autoloads from mru-bookmark.el

(defvar global-semantic-mru-bookmark-mode nil "\
Non-nil if Global Semantic-Mru-Bookmark mode is enabled.
See the `global-semantic-mru-bookmark-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-mru-bookmark-mode'.")

(custom-autoload 'global-semantic-mru-bookmark-mode "semantic/mru-bookmark" nil)

(autoload 'global-semantic-mru-bookmark-mode "semantic/mru-bookmark" "\
Toggle global use of option `semantic-mru-bookmark-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Mru-Bookmark mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-mru-bookmark-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/mru-bookmark"
;;;;;;  "mru-bookmark.el" (0 0 0 0))
;;; Generated autoloads from mru-bookmark.el

(register-definition-prefixes "semantic/mru-bookmark" '("global-semantic-mru-bookmark-mode" "semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/scope" "scope.el" "7a18b84673e7fc30d5bee8631b542eae")
;;; Generated autoloads from scope.el

(autoload 'semantic-calculate-scope "semantic/scope" "\
Calculate the scope at POINT.
If POINT is not provided, then use the current location of point.
The class returned from the scope calculation is variable
`semantic-scope-cache'.

\(fn &optional POINT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/scope"
;;;;;;  "scope.el" (0 0 0 0))
;;; Generated autoloads from scope.el

(register-definition-prefixes "semantic/scope" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/senator" "senator.el" "7224e22da7b496e6119317590859d27b")
;;; Generated autoloads from senator.el

(defvar senator-step-at-tag-classes nil "\
List of tag classes recognized by Senator's navigation commands.
A tag class is a symbol, such as `variable', `function', or `type'.

As a special exception, if the value is nil, Senator's navigation
commands recognize all tag classes.")

(custom-autoload 'senator-step-at-tag-classes "semantic/senator" t)

(make-variable-buffer-local 'senator-step-at-tag-classes)

(defvar senator-step-at-start-end-tag-classes nil "\
List of tag classes at which Senator's navigation commands should stop.
A tag class is a symbol, such as `variable', `function', or `type'.
The navigation commands stop at the start and end of each tag
class in this list, provided the tag class is recognized (see
`senator-step-at-tag-classes').

As a special exception, if the value is nil, the navigation
commands stop at the beginning of every tag.

If t, the navigation commands stop at the start and end of any
tag, where possible.")

(custom-autoload 'senator-step-at-start-end-tag-classes "semantic/senator" t)

(make-variable-buffer-local 'senator-step-at-start-end-tag-classes)

(autoload 'senator-next-tag "semantic/senator" "\
Navigate to the next Semantic tag.
Return the tag or nil if at end of buffer." t nil)

(autoload 'senator-previous-tag "semantic/senator" "\
Navigate to the previous Semantic tag.
Return the tag or nil if at beginning of buffer." t nil)

(autoload 'senator-go-to-up-reference "semantic/senator" "\
Move up one reference from the current TAG.
A \"reference\" could be any interesting feature of TAG.
In C++, a function may have a `parent' which is non-local.
If that parent which is only a reference in the function tag
is found, we can jump to it.
Some tags such as includes have other reference features.

\(fn &optional TAG)" t nil)

(autoload 'senator-copy-tag "semantic/senator" "\
Take the current tag, and place it in the tag ring." t nil)

(autoload 'senator-kill-tag "semantic/senator" "\
Take the current tag, place it in the tag ring, and kill it.
Killing the tag removes the text for that tag, and places it into
the kill ring.  Retrieve that text with \\[yank]." t nil)

(autoload 'senator-yank-tag "semantic/senator" "\
Yank a tag from the tag ring.
The form the tag takes is different depending on where it is being
yanked to." t nil)

(autoload 'senator-copy-tag-to-register "semantic/senator" "\
Copy the current tag into REGISTER.
Optional argument KILL-FLAG will delete the text of the tag to the
kill ring.

Interactively, reads the register using `register-read-with-preview',
if available.

\(fn REGISTER &optional KILL-FLAG)" t nil)

(autoload 'senator-transpose-tags-up "semantic/senator" "\
Transpose the current tag, and the preceding tag." t nil)

(autoload 'senator-transpose-tags-down "semantic/senator" "\
Transpose the current tag, and the following tag." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/senator"
;;;;;;  "senator.el" (0 0 0 0))
;;; Generated autoloads from senator.el

(register-definition-prefixes "semantic/senator" '("semantic-up-reference" "senator-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/sort" "sort.el" "679861c2b2466b5be448a8c2675cb6f1")
;;; Generated autoloads from sort.el

(autoload 'semantic-flatten-tags-table "semantic/sort" "\
Flatten the tags table TABLE.
All tags in TABLE, and all components of top level tags
in TABLE will appear at the top level of list.
Tags promoted to the top of the list will still appear
unmodified as components of their parent tags.

\(fn &optional TABLE)" nil nil)

(autoload 'semantic-tag-external-member-parent "semantic/sort" "\
Return a parent for TAG when TAG is an external member.
TAG is an external member if it is defined at a toplevel and
has some sort of label defining a parent.  The parent return will
be a string.

The default behavior, if not overridden with
`tag-member-parent' gets the `parent' extra
specifier of TAG.

If this function is overridden, use
`semantic-tag-external-member-parent-default' to also
include the default behavior, and merely extend your own.

\(fn TAG)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/sort"
;;;;;;  "sort.el" (0 0 0 0))
;;; Generated autoloads from sort.el

(register-definition-prefixes "semantic/sort" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/symref" "symref.el" "81a67584b4d0b6eabf8921764e3bc2b7")
;;; Generated autoloads from symref.el

(autoload 'semantic-symref-find-references-by-name "semantic/symref" "\
Find a list of references to NAME in the current project.
Optional SCOPE specifies which file set to search.  Defaults to `project'.
Refers to `semantic-symref-tool', to determine the reference tool to use
for the current buffer.
Returns an object of class `semantic-symref-result'.
TOOL-RETURN is an optional symbol, which will be assigned the tool used
to perform the search.  This was added for use by a test harness.

\(fn NAME &optional SCOPE TOOL-RETURN)" t nil)

(autoload 'semantic-symref-find-tags-by-name "semantic/symref" "\
Find a list of tags by NAME in the current project.
Optional SCOPE specifies which file set to search.  Defaults to `project'.
Refers to `semantic-symref-tool', to determine the reference tool to use
for the current buffer.
Returns an object of class `semantic-symref-result'.

\(fn NAME &optional SCOPE)" t nil)

(autoload 'semantic-symref-find-tags-by-regexp "semantic/symref" "\
Find a list of references to NAME in the current project.
Optional SCOPE specifies which file set to search.  Defaults to `project'.
Refers to `semantic-symref-tool', to determine the reference tool to use
for the current buffer.
Returns an object of class `semantic-symref-result'.

\(fn NAME &optional SCOPE)" t nil)

(autoload 'semantic-symref-find-tags-by-completion "semantic/symref" "\
Find a list of references to NAME in the current project.
Optional SCOPE specifies which file set to search.  Defaults to `project'.
Refers to `semantic-symref-tool', to determine the reference tool to use
for the current buffer.
Returns an object of class `semantic-symref-result'.

\(fn NAME &optional SCOPE)" t nil)

(autoload 'semantic-symref-find-file-references-by-name "semantic/symref" "\
Find a list of references to NAME in the current project.
Optional SCOPE specifies which file set to search.  Defaults to `project'.
Refers to `semantic-symref-tool', to determine the reference tool to use
for the current buffer.
Returns an object of class `semantic-symref-result'.

\(fn NAME &optional SCOPE)" t nil)

(autoload 'semantic-symref-find-text "semantic/symref" "\
Find a list of occurrences of TEXT in the current project.
TEXT is a regexp formatted for use with grep -E.
Optional SCOPE specifies which file set to search.  Defaults to `project'.
Refers to `semantic-symref-tool', to determine the reference tool to use
for the current buffer.
Returns an object of class `semantic-symref-result'.

\(fn TEXT &optional SCOPE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/symref"
;;;;;;  "symref.el" (0 0 0 0))
;;; Generated autoloads from symref.el

(register-definition-prefixes "semantic/symref" '("semantic-symref-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/symref/cscope" "symref/cscope.el"
;;;;;;  "a90c4d60cf95d3efc2b63447a088ac4b")
;;; Generated autoloads from symref/cscope.el

(eieio-defclass-autoload 'semantic-symref-tool-cscope '(semantic-symref-tool-baseclass) "semantic/symref/cscope" "A symref tool implementation using CScope.\nThe CScope command can be used to generate lists of tags in a way\nsimilar to that of `grep'.  This tool will parse the output to generate\nthe hit list.\n\nSee the function `cedet-cscope-search' for more details.")

;;;### (autoloads "actual autoloads are elsewhere" "semantic/symref/cscope"
;;;;;;  "symref/cscope.el" (0 0 0 0))
;;; Generated autoloads from symref/cscope.el

(register-definition-prefixes "semantic/symref/cscope" '("semantic-symref-cscope--line-re"))

;;;***

;;;***

;;;### (autoloads nil "semantic/symref/global" "symref/global.el"
;;;;;;  "d419028e6bc2f8d5aa807bbd8b8de0de")
;;; Generated autoloads from symref/global.el

(eieio-defclass-autoload 'semantic-symref-tool-global '(semantic-symref-tool-baseclass) "semantic/symref/global" "A symref tool implementation using GNU Global.\nThe GNU Global command can be used to generate lists of tags in a way\nsimilar to that of `grep'.  This tool will parse the output to generate\nthe hit list.\n\nSee the function `cedet-gnu-global-search' for more details.")

;;;### (autoloads "actual autoloads are elsewhere" "semantic/symref/global"
;;;;;;  "symref/global.el" (0 0 0 0))
;;; Generated autoloads from symref/global.el

(register-definition-prefixes "semantic/symref/global" '("semantic-symref-global--line-re"))

;;;***

;;;***

;;;### (autoloads nil "semantic/symref/grep" "symref/grep.el" "263650ac84f93d80f283b9206f2463e9")
;;; Generated autoloads from symref/grep.el

(eieio-defclass-autoload 'semantic-symref-tool-grep '(semantic-symref-tool-baseclass) "semantic/symref/grep" "A symref tool implementation using grep.\nThis tool uses EDE to find the root of the project, then executes\n`find-grep' in the project.  The output is parsed for hits and\nthose hits returned.")

;;;### (autoloads "actual autoloads are elsewhere" "semantic/symref/grep"
;;;;;;  "symref/grep.el" (0 0 0 0))
;;; Generated autoloads from symref/grep.el

(register-definition-prefixes "semantic/symref/grep" '("semantic-symref-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/symref/idutils" "symref/idutils.el"
;;;;;;  "6df7bc8c138407e85a6669f4e8198abe")
;;; Generated autoloads from symref/idutils.el

(eieio-defclass-autoload 'semantic-symref-tool-idutils '(semantic-symref-tool-baseclass) "semantic/symref/idutils" "A symref tool implementation using ID Utils.\nThe udutils command set can be used to generate lists of tags in a way\nsimilar to that of `grep'.  This tool will parse the output to generate\nthe hit list.\n\nSee the function `cedet-idutils-search' for more details.")

;;;### (autoloads "actual autoloads are elsewhere" "semantic/symref/idutils"
;;;;;;  "symref/idutils.el" (0 0 0 0))
;;; Generated autoloads from symref/idutils.el

(register-definition-prefixes "semantic/symref/idutils" '("semantic-symref-idutils--line-re"))

;;;***

;;;***

;;;### (autoloads nil "semantic/symref/list" "symref/list.el" "6dd5d95d6adaf63213a6d5ddc1fb5900")
;;; Generated autoloads from symref/list.el

(autoload 'semantic-symref "semantic/symref/list" "\
Find references to the current tag.
This command uses the currently configured references tool within the
current project to find references to the current tag.  The
references are organized by file and the name of the function
they are used in.
Display the references in `semantic-symref-results-mode'." t nil)

(autoload 'semantic-symref-symbol "semantic/symref/list" "\
Find references to the symbol SYM.
This command uses the currently configured references tool within the
current project to find references to the input SYM.  The
references are organized by file and the name of the function
they are used in.
Display the references in `semantic-symref-results-mode'.

\(fn SYM)" t nil)

(autoload 'semantic-symref-regexp "semantic/symref/list" "\
Find references to the a symbol regexp SYM.
This command uses the currently configured references tool within the
current project to find references to the input SYM.  The
references are the organized by file and the name of the function
they are used in.
Display the references in `semantic-symref-results-mode'.

\(fn SYM)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/symref/list"
;;;;;;  "symref/list.el" (0 0 0 0))
;;; Generated autoloads from symref/list.el

(register-definition-prefixes "semantic/symref/list" '("semantic-symref-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/tag" "tag.el" "e2302d3a94db08c4199be81193bd66e1")
;;; Generated autoloads from tag.el

(autoload 'semantic-tag-components "semantic/tag" "\
Return a list of components for TAG.
A Component is a part of TAG which itself may be a TAG.
Examples include the elements of a structure in a
tag of class `type', or the list of arguments to a
tag of class `function'.

\(fn TAG)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/tag"
;;;;;;  "tag.el" (0 0 0 0))
;;; Generated autoloads from tag.el

(register-definition-prefixes "semantic/tag" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/tag-file" "tag-file.el" "37d937f722c334743ba668de4f5e1afe")
;;; Generated autoloads from tag-file.el

(autoload 'semantic-go-to-tag "semantic/tag-file" "\
Go to the location of TAG.
TAG may be a stripped element, in which case PARENT specifies a
parent tag that has position information.
PARENT can also be a `semanticdb-table' object.

\(fn TAG &optional PARENT)" nil nil)

(autoload 'semantic-dependency-tag-file "semantic/tag-file" "\
Find the filename represented from TAG.
Depends on `semantic-dependency-include-path' for searching.  Always searches
`.' first, then searches additional paths.

\(fn &optional TAG)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/tag-file"
;;;;;;  "tag-file.el" (0 0 0 0))
;;; Generated autoloads from tag-file.el

(register-definition-prefixes "semantic/tag-file" '("semantic-prototype-file"))

;;;***

;;;***

;;;### (autoloads nil "semantic/tag-ls" "tag-ls.el" "0f2fc2ffa2d8933c75bd731c44f4d0bf")
;;; Generated autoloads from tag-ls.el

(autoload 'semantic-tag-prototype-p "semantic/tag-ls" "\
Return non-nil if TAG is a prototype.
For some languages, such as C, a prototype is a declaration of
something without an implementation.

\(fn TAG)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/tag-ls"
;;;;;;  "tag-ls.el" (0 0 0 0))
;;; Generated autoloads from tag-ls.el

(register-definition-prefixes "semantic/tag-ls" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/tag-write" "tag-write.el" "8b8b5c703bd5d3228d98f8f93c81b3aa")
;;; Generated autoloads from tag-write.el

(autoload 'semantic-tag-write-list-slot-value "semantic/tag-write" "\
Write out the VALUE of a slot for EIEIO.
The VALUE is a list of tags.

\(fn VALUE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/tag-write"
;;;;;;  "tag-write.el" (0 0 0 0))
;;; Generated autoloads from tag-write.el

(register-definition-prefixes "semantic/tag-write" '("semantic-tag-write-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/texi" "texi.el" "edd99e33ae4e3d4069feba3efae1f171")
;;; Generated autoloads from texi.el

(autoload 'semantic-default-texi-setup "semantic/texi" "\
Set up a buffer for parsing of Texinfo files." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/texi"
;;;;;;  "texi.el" (0 0 0 0))
;;; Generated autoloads from texi.el

(register-definition-prefixes "semantic/texi" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/util-modes" "util-modes.el" "9cb69e6ec539cf6fcab9743989db669c")
;;; Generated autoloads from util-modes.el

(defvar global-semantic-highlight-edits-mode nil "\
Non-nil if Global Semantic-Highlight-Edits mode is enabled.
See the `global-semantic-highlight-edits-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-highlight-edits-mode'.")

(custom-autoload 'global-semantic-highlight-edits-mode "semantic/util-modes" nil)

(autoload 'global-semantic-highlight-edits-mode "semantic/util-modes" "\
Toggle global use of option `semantic-highlight-edits-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Highlight-Edits mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-highlight-edits-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(autoload 'semantic-highlight-edits-mode "semantic/util-modes" "\
Minor mode for highlighting changes made in a buffer.
Changes are tracked by semantic so that the incremental parser can work
properly.
This mode will highlight those changes as they are made, and clear them
when the incremental parser accounts for those edits.

This is a minor mode.  If called interactively, toggle the
`Semantic-Highlight-Edits mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `semantic-highlight-edits-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\(fn &optional ARG)" t nil)

(defvar global-semantic-show-unmatched-syntax-mode nil "\
Non-nil if Global Semantic-Show-Unmatched-Syntax mode is enabled.
See the `global-semantic-show-unmatched-syntax-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-show-unmatched-syntax-mode'.")

(custom-autoload 'global-semantic-show-unmatched-syntax-mode "semantic/util-modes" nil)

(autoload 'global-semantic-show-unmatched-syntax-mode "semantic/util-modes" "\
Toggle global use of option `semantic-show-unmatched-syntax-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Show-Unmatched-Syntax mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value
\\='global-semantic-show-unmatched-syntax-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(autoload 'semantic-show-unmatched-syntax-mode "semantic/util-modes" "\
Minor mode to highlight unmatched lexical syntax tokens.
When a parser executes, some elements in the buffer may not match any
parser rules.  These text characters are considered unmatched syntax.
Often time, the display of unmatched syntax can expose coding
problems before the compiler is run.

This is a minor mode.  If called interactively, toggle the
`Semantic-Show-Unmatched-Syntax mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `semantic-show-unmatched-syntax-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\\{semantic-show-unmatched-syntax-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-semantic-show-parser-state-mode nil "\
Non-nil if Global Semantic-Show-Parser-State mode is enabled.
See the `global-semantic-show-parser-state-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-show-parser-state-mode'.")

(custom-autoload 'global-semantic-show-parser-state-mode "semantic/util-modes" nil)

(autoload 'global-semantic-show-parser-state-mode "semantic/util-modes" "\
Toggle global use of option `semantic-show-parser-state-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Show-Parser-State mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-show-parser-state-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(autoload 'semantic-show-parser-state-mode "semantic/util-modes" "\
Minor mode for displaying parser cache state in the modeline.
The cache can be in one of three states.  They are
Up to date, Partial reparse needed, and Full reparse needed.
The state is indicated in the modeline with the following characters:
 `-'  ->  The cache is up to date.
 `!'  ->  The cache requires a full update.
 `~'  ->  The cache needs to be incrementally parsed.
 `%'  ->  The cache is not currently parsable.
 `@'  ->  Auto-parse in progress (not set here.)

This is a minor mode.  If called interactively, toggle the
`Semantic-Show-Parser-State mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `semantic-show-parser-state-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\(fn &optional ARG)" t nil)

(defvar global-semantic-stickyfunc-mode nil "\
Non-nil if Global Semantic-Stickyfunc mode is enabled.
See the `global-semantic-stickyfunc-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-stickyfunc-mode'.")

(custom-autoload 'global-semantic-stickyfunc-mode "semantic/util-modes" nil)

(autoload 'global-semantic-stickyfunc-mode "semantic/util-modes" "\
Toggle global use of option `semantic-stickyfunc-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Stickyfunc mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-stickyfunc-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(autoload 'semantic-stickyfunc-mode "semantic/util-modes" "\
Minor mode to show the title of a tag in the header line.
Enables/disables making the header line of functions sticky.
A function (or other tag class specified by
`semantic-stickyfunc-sticky-classes') has a header line, meaning the
first line which describes the rest of the construct.  This first
line is what is displayed in the header line.

This is a minor mode.  If called interactively, toggle the
`Semantic-Stickyfunc mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `semantic-stickyfunc-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\(fn &optional ARG)" t nil)

(defvar global-semantic-highlight-func-mode nil "\
Non-nil if Global Semantic-Highlight-Func mode is enabled.
See the `global-semantic-highlight-func-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-semantic-highlight-func-mode'.")

(custom-autoload 'global-semantic-highlight-func-mode "semantic/util-modes" nil)

(autoload 'global-semantic-highlight-func-mode "semantic/util-modes" "\
Toggle global use of option `semantic-highlight-func-mode'.

This is a minor mode.  If called interactively, toggle the `Global
Semantic-Highlight-Func mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='global-semantic-highlight-func-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(autoload 'semantic-highlight-func-mode "semantic/util-modes" "\
Minor mode to highlight the first line of the current tag.
Enables/disables making the current function's first line light up.
A function (or other tag class specified by
`semantic-stickyfunc-sticky-classes') is highlighted, meaning the
first line which describes the rest of the construct.

This is a minor mode.  If called interactively, toggle the
`Semantic-Highlight-Func mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `semantic-highlight-func-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

See `semantic-stickyfunc-mode' for putting a function in the
header line.  This mode recycles the stickyfunc configuration
classes list.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/util-modes"
;;;;;;  "util-modes.el" (0 0 0 0))
;;; Generated autoloads from util-modes.el

(register-definition-prefixes "semantic/util-modes" '("semantic-"))

;;;***

;;;***

;;;### (autoloads nil "semantic/wisent/java-tags" "wisent/java-tags.el"
;;;;;;  "82d8b747d4a7ed2f2a22b624ba55a7ca")
;;; Generated autoloads from wisent/java-tags.el

(autoload 'wisent-java-default-setup "semantic/wisent/java-tags" "\
Hook run to setup Semantic in `java-mode'.
Use the alternate LALR(1) parser." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/wisent/java-tags"
;;;;;;  "wisent/java-tags.el" (0 0 0 0))
;;; Generated autoloads from wisent/java-tags.el

(register-definition-prefixes "semantic/wisent/java-tags" '("semantic-" "wisent-java-parse-error"))

;;;***

;;;***

;;;### (autoloads nil "semantic/wisent/javascript" "wisent/javascript.el"
;;;;;;  "6aa2414c55c69284ce32670bd1a8c852")
;;; Generated autoloads from wisent/javascript.el

(autoload 'wisent-javascript-setup-parser "semantic/wisent/javascript" "\
Setup buffer for parse." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/wisent/javascript"
;;;;;;  "wisent/javascript.el" (0 0 0 0))
;;; Generated autoloads from wisent/javascript.el

(register-definition-prefixes "semantic/wisent/javascript" '("semantic-" "wisent-javascript-jv-expand-tag"))

;;;***

;;;***

;;;### (autoloads nil "semantic/wisent/python" "wisent/python.el"
;;;;;;  "fa0f79cdd9819e43ea4fa556334fd5e1")
;;; Generated autoloads from wisent/python.el

(autoload 'wisent-python-default-setup "semantic/wisent/python" "\
Setup buffer for parse." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "semantic/wisent/python"
;;;;;;  "wisent/python.el" (0 0 0 0))
;;; Generated autoloads from wisent/python.el

(register-definition-prefixes "semantic/wisent/python" '("semantic-" "wisent-python-"))

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
