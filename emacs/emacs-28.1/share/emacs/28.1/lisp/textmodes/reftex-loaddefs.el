;;; reftex-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "reftex-auc" "reftex-auc.el" "4ce2e94bba85eb9995d62cfdcd9f4fa7")
;;; Generated autoloads from reftex-auc.el

(autoload 'reftex-arg-label "reftex-auc" "\
Use `reftex-label', `reftex-reference' or AUCTeX's code to insert label arg.
What is being used depends upon `reftex-plug-into-AUCTeX'.

\(fn OPTIONAL &optional PROMPT DEFINITION)" nil nil)

(autoload 'reftex-arg-cite "reftex-auc" "\
Use `reftex-citation' or AUCTeX's code to insert a cite-key macro argument.
What is being used depends upon `reftex-plug-into-AUCTeX'.

\(fn OPTIONAL &optional PROMPT DEFINITION)" nil nil)

(autoload 'reftex-arg-index-tag "reftex-auc" "\
Prompt for an index tag with completion.
This is the name of an index, not the entry.

\(fn OPTIONAL &optional PROMPT &rest ARGS)" nil nil)

(autoload 'reftex-arg-index "reftex-auc" "\
Prompt for an index entry completing with known entries.
Completion is specific for just one index, if the macro or a tag
argument identify one of multiple indices.

\(fn OPTIONAL &optional PROMPT &rest ARGS)" nil nil)

(autoload 'reftex-plug-into-AUCTeX "reftex-auc" nil nil nil)

(autoload 'reftex-toggle-plug-into-AUCTeX "reftex-auc" "\
Toggle Interface between AUCTeX and RefTeX on and off." t nil)

(autoload 'reftex-add-label-environments "reftex-auc" "\
Add label environment descriptions to `reftex-label-alist-style'.
The format of ENTRY-LIST is exactly like `reftex-label-alist'.  See there
for details.
This function makes it possible to support RefTeX from AUCTeX style files.
The entries in ENTRY-LIST will be processed after the user settings in
`reftex-label-alist', and before the defaults (specified in
`reftex-default-label-alist-entries').  Any changes made to
`reftex-label-alist-style' will raise a flag to the effect that
the label information is recompiled on next use.

\(fn ENTRY-LIST)" nil nil)

(defalias 'reftex-add-to-label-alist #'reftex-add-label-environments)

(autoload 'reftex-add-section-levels "reftex-auc" "\
Add entries to the value of `reftex-section-levels'.
The added values are kept local to the current document.  The format
of ENTRY-LIST is a list of cons cells (\"MACRONAME\" . LEVEL).  See
`reftex-section-levels' for an example.

\(fn ENTRY-LIST)" nil nil)

(autoload 'reftex-notice-new-section "reftex-auc" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-auc" "reftex-auc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from reftex-auc.el

(register-definition-prefixes "reftex-auc" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-cite" "reftex-cite.el" "f29bd4fe20937da3bb71749e0633dbc3")
;;; Generated autoloads from reftex-cite.el

(autoload 'reftex-default-bibliography "reftex-cite" "\
Return the expanded value of variable `reftex-default-bibliography'.
The expanded value is cached." nil nil)

(autoload 'reftex-bib-or-thebib "reftex-cite" "\
Test if BibTeX or \\begin{thebibliography} should be used for the citation.
Find the bof of the current file." nil nil)

(autoload 'reftex-get-bibfile-list "reftex-cite" "\
Return list of bibfiles for current document.
When using the chapterbib or bibunits package you should either
use the same database files everywhere, or separate parts using
different databases into different files (included into the mater file).
Then this function will return the applicable database files." nil nil)

(autoload 'reftex-pop-to-bibtex-entry "reftex-cite" "\
Find BibTeX KEY in any file in FILE-LIST in another window.
If MARK-TO-KILL is non-nil, mark new buffer to kill.
If HIGHLIGHT is non-nil, highlight the match.
If ITEM in non-nil, search for bibitem instead of database entry.
If RETURN is non-nil, just return the entry and restore point.

\(fn KEY FILE-LIST &optional MARK-TO-KILL HIGHLIGHT ITEM RETURN)" nil nil)

(autoload 'reftex-end-of-bib-entry "reftex-cite" "\


\(fn ITEM)" nil nil)

(autoload 'reftex-parse-bibtex-entry "reftex-cite" "\
Parse BibTeX ENTRY.
If ENTRY is nil then parse the entry in current buffer between FROM and TO.
If RAW is non-nil, keep double quotes/curly braces delimiting fields.

\(fn ENTRY &optional FROM TO RAW)" nil nil)

(autoload 'reftex-citation "reftex-cite" "\
Make a citation using BibTeX database files.
After prompting for a regular expression, scans the buffers with
bibtex entries (taken from the \\bibliography command) and offers the
matching entries for selection.  The selected entry is formatted according
to `reftex-cite-format' and inserted into the buffer.

If NO-INSERT is non-nil, nothing is inserted, only the selected key returned.

FORMAT-KEY can be used to pre-select a citation format.

When called with a \\[universal-argument] prefix, prompt for optional arguments in
cite macros.  When called with a numeric prefix, make that many
citations.  When called with point inside the braces of a `\\cite'
command, it will add another key, ignoring the value of
`reftex-cite-format'.

The regular expression uses an expanded syntax: && is interpreted as `and'.
Thus, `aaaa&&bbb' matches entries which contain both `aaaa' and `bbb'.
While entering the regexp, completion on knows citation keys is possible.
`=' is a good regular expression to match all entries in all files.

\(fn &optional NO-INSERT FORMAT-KEY)" t nil)

(autoload 'reftex-citep "reftex-cite" "\
Call `reftex-citation' with a format selector `?p'." t nil)

(autoload 'reftex-citet "reftex-cite" "\
Call `reftex-citation' with a format selector `?t'." t nil)

(autoload 'reftex-make-cite-echo-string "reftex-cite" "\
Format a bibtex ENTRY for the echo area and cache the result.

\(fn ENTRY DOCSTRUCT-SYMBOL)" nil nil)

(autoload 'reftex-create-bibtex-file "reftex-cite" "\
Create a new BibTeX database BIBFILE with all entries referenced in document.
The command prompts for a filename and writes the collected
entries to that file.  Only entries referenced in the current
document with any \\cite-like macros are used.  The sequence in
the new file is the same as it was in the old database.

Entries referenced from other entries must appear after all
referencing entries.

You can define strings to be used as header or footer for the
created files in the variables `reftex-create-bibtex-header' or
`reftex-create-bibtex-footer' respectively.

\(fn BIBFILE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-cite"
;;;;;;  "reftex-cite.el" (0 0 0 0))
;;; Generated autoloads from reftex-cite.el

(register-definition-prefixes "reftex-cite" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-dcr" "reftex-dcr.el" "7b7a29b68871089ac79203568a60887f")
;;; Generated autoloads from reftex-dcr.el

(autoload 'reftex-view-crossref "reftex-dcr" "\
View cross reference of macro at point.

Point must be on the KEY argument.  When at a `\\ref' macro, show
corresponding `\\label' definition, also in external
documents (`xr').  When on a label, show a locations where KEY is
referenced.  Subsequent calls find additional locations.  When on
a `\\cite', show the associated `\\bibitem' macro or the BibTeX
database entry.  When on a `\\bibitem', show a `\\cite' macro
which uses this KEY.  When on an `\\index', show other locations
marked by the same index entry.

To define additional cross referencing items, use the option
`reftex-view-crossref-extra'.  See also `reftex-view-crossref-from-bibtex'.
With one or two \\[universal-argument] prefixes, enforce rescanning of the document.
With argument 2, select the window showing the cross reference.
AUTO-HOW is only for the automatic crossref display and is handed through
to the functions `reftex-view-cr-cite' and `reftex-view-cr-ref'.

\(fn &optional ARG AUTO-HOW FAIL-QUIETLY)" t nil)

(autoload 'reftex-mouse-view-crossref "reftex-dcr" "\
View cross reference of \\ref or \\cite macro where you click.
If the macro at point is a \\ref, show the corresponding label definition.
If it is a \\cite, show the BibTeX database entry.
If there is no such macro at point, search forward to find one.
With argument, actually select the window showing the cross reference.

\(fn EV)" t nil)

(autoload 'reftex-toggle-auto-view-crossref "reftex-dcr" "\
Toggle the automatic display of crossref information in the echo area.
When active, leaving point idle in the argument of a \\ref or \\cite macro
will display info in the echo area." t nil)

(autoload 'reftex-view-crossref-from-bibtex "reftex-dcr" "\
View location in a LaTeX document which cites the BibTeX entry at point.
Since BibTeX files can be used by many LaTeX documents, this function
prompts upon first use for a buffer in RefTeX mode.  To reset this
link to a document, call the function with a prefix arg.
Calling this function several times find successive citation locations.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-dcr" "reftex-dcr.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from reftex-dcr.el

(register-definition-prefixes "reftex-dcr" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-global" "reftex-global.el" "3518d1c320af97c374df0b0a4033bb37")
;;; Generated autoloads from reftex-global.el

(autoload 'reftex-create-tags-file "reftex-global" "\
Create TAGS file by running `etags' on the current document.
The TAGS file is also immediately visited with `visit-tags-table'." t nil)

(autoload 'reftex-grep-document "reftex-global" "\
Run grep query through all files related to this document.
With prefix arg, force to rescan document.
No active TAGS table is required.

\(fn GREP-CMD)" t nil)

(autoload 'reftex-search-document "reftex-global" "\
Regexp search through all files of the current document.
Starts always in the master file.  Stops when a match is found.
To continue searching for next match, use command \\[tags-loop-continue].
No active TAGS table is required.

\(fn &optional REGEXP)" t nil)

(autoload 'reftex-query-replace-document "reftex-global" "\
Do `query-replace-regexp' of FROM with TO over the entire document.
Third arg DELIMITED (prefix arg) means replace only word-delimited matches.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].
No active TAGS table is required.

\(fn &optional FROM TO DELIMITED)" t nil)

(autoload 'reftex-find-duplicate-labels "reftex-global" "\
Produce a list of all duplicate labels in the document." t nil)

(autoload 'reftex-change-label "reftex-global" "\
Run `query-replace-regexp' of FROM with TO in all macro arguments.
Works on the entire multifile document.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].
No active TAGS table is required.

\(fn &optional FROM TO)" t nil)

(autoload 'reftex-renumber-simple-labels "reftex-global" "\
Renumber all simple labels in the document to make them sequentially.
Simple labels are the ones created by RefTeX, consisting only of the
prefix and a number.  After the command completes, all these labels will
have sequential numbers throughout the document.  Any references to
the labels will be changed as well.  For this, RefTeX looks at the
arguments of any macros which either start or end in the string `ref'.
This command should be used with care, in particular in multifile
documents.  You should not use it if another document refers to this
one with the `xr' package." t nil)

(autoload 'reftex-save-all-document-buffers "reftex-global" "\
Save all documents associated with the current document.
The function is useful after a global action like replacing or renumbering
labels." t nil)

(autoload 'reftex-isearch-minor-mode "reftex-global" "\
When on, isearch searches the whole document, not only the current file.
This minor mode allows isearch to search through all the files of
the current TeX document.

With no argument, this command toggles
`reftex-isearch-minor-mode'.  With a prefix argument ARG, turn
`reftex-isearch-minor-mode' on if ARG is positive, otherwise turn it off.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-global"
;;;;;;  "reftex-global.el" (0 0 0 0))
;;; Generated autoloads from reftex-global.el

(register-definition-prefixes "reftex-global" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-index" "reftex-index.el" "d44dfb9a5c3988fc9add32cfc8bdef39")
;;; Generated autoloads from reftex-index.el

(autoload 'reftex-index-selection-or-word "reftex-index" "\
Put selection or the word near point into the default index macro.
This uses the information in `reftex-index-default-macro' to make an index
entry.  The phrase indexed is the current selection or the word near point.
When called with one \\[universal-argument] prefix, let the user have a chance to edit the
index entry.  When called with 2 \\[universal-argument] as prefix, also ask for the index
macro and other stuff.
When called inside TeX math mode as determined by the `texmathp.el' library
which is part of AUCTeX, the string is first processed with the
`reftex-index-math-format', which see.

\(fn &optional ARG PHRASE)" t nil)

(autoload 'reftex-index "reftex-index" "\
Query for an index macro and insert it along with its arguments.
The index macros available are those defined in `reftex-index-macro' or
by a call to `reftex-add-index-macros', typically from an AUCTeX style file.
RefteX provides completion for the index tag and the index key, and
will prompt for other arguments.

\(fn &optional CHAR KEY TAG SEL NO-INSERT)" t nil)

(autoload 'reftex-index-complete-tag "reftex-index" "\


\(fn &optional ITAG OPT-ARGS)" nil nil)

(autoload 'reftex-index-select-tag "reftex-index" nil nil nil)

(autoload 'reftex-index-complete-key "reftex-index" "\


\(fn &optional TAG OPTIONAL INITIAL)" nil nil)

(autoload 'reftex-index-show-entry "reftex-index" "\


\(fn DATA &optional NO-REVISIT)" nil nil)

(autoload 'reftex-display-index "reftex-index" "\
Display a buffer with an index compiled from the current document.
When the document has multiple indices, first prompts for the correct one.
When index support is turned off, offer to turn it on.
With one or two \\[universal-argument] prefixes, rescan document first.
With prefix 2, restrict index to current document section.
With prefix 3, restrict index to region.

\(fn &optional TAG OVERRIDING-RESTRICTION REDO &rest LOCATIONS)" t nil)

(autoload 'reftex-index-phrase-selection-or-word "reftex-index" "\
Add current selection or word at point to the phrases buffer.
When you are in transient-mark-mode and the region is active, the
selection will be used - otherwise the word at point.
You get a chance to edit the entry in the phrases buffer - finish with
`C-c C-c'.

\(fn ARG)" t nil)

(autoload 'reftex-index-visit-phrases-buffer "reftex-index" "\
Switch to the phrases buffer, initialize if empty." t nil)

(autoload 'reftex-index-phrases-mode "reftex-index" "\
Major mode for managing the Index phrases of a LaTeX document.
This buffer was created with RefTeX.

To insert new phrases, use
 - `C-c \\' in the LaTeX document to copy selection or word
 - `\\[reftex-index-new-phrase]' in the phrases buffer.

To index phrases use one of:

\\[reftex-index-this-phrase]     index current phrase
\\[reftex-index-next-phrase]     index next phrase (or N with prefix arg)
\\[reftex-index-all-phrases]     index all phrases
\\[reftex-index-remaining-phrases]     index current and following phrases
\\[reftex-index-region-phrases]     index the phrases in the region

You can sort the phrases in this buffer with \\[reftex-index-sort-phrases].
To display information about the phrase at point, use \\[reftex-index-phrases-info].

For more information see the RefTeX User Manual.

Here are all local bindings.

\\{reftex-index-phrases-mode-map}

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-index"
;;;;;;  "reftex-index.el" (0 0 0 0))
;;; Generated autoloads from reftex-index.el

(register-definition-prefixes "reftex-index" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-parse" "reftex-parse.el" "780354f2473508d0aec4856658f1f57d")
;;; Generated autoloads from reftex-parse.el

(autoload 'reftex-parse-one "reftex-parse" "\
Re-parse this file." t nil)

(autoload 'reftex-parse-all "reftex-parse" "\
Re-parse entire document." t nil)

(autoload 'reftex-do-parse "reftex-parse" "\
Do a document rescan.
When allowed, do only a partial scan from FILE.

\(fn RESCAN &optional FILE)" nil nil)

(autoload 'reftex-everything-regexp "reftex-parse" nil nil nil)

(autoload 'reftex-all-document-files "reftex-parse" "\
Return a list of all files belonging to the current document.
When RELATIVE is non-nil, give file names relative to directory
of master file.

\(fn &optional RELATIVE)" nil nil)

(autoload 'reftex-locate-bibliography-files "reftex-parse" "\
Scan buffer for bibliography macros and return file list.

\(fn MASTER-DIR &optional FILES)" nil nil)

(autoload 'reftex-section-info "reftex-parse" "\
Return a section entry for the current match.
Careful: This function expects the `match-data' to still be in
place!

\(fn FILE)" nil nil)

(autoload 'reftex-ensure-index-support "reftex-parse" "\
When index support is turned off, ask to turn it on and
set the current prefix argument so that `reftex-access-scan-info'
will rescan the entire document.

\(fn &optional ABORT)" nil nil)

(autoload 'reftex-index-info-safe "reftex-parse" "\


\(fn FILE)" nil nil)

(autoload 'reftex-index-info "reftex-parse" "\
Return an index entry for the current match.
Careful: This function expects the `match-data' to still be in
place!

\(fn FILE)" nil nil)

(autoload 'reftex-short-context "reftex-parse" "\
Get about one line of useful context for the label definition at point.

\(fn ENV PARSE &optional BOUND DERIVE)" nil nil)

(autoload 'reftex-where-am-I "reftex-parse" "\
Return the docstruct entry above point.
Actually returns a cons cell in which the cdr is a flag indicating
if the information is exact (t) or approximate (nil)." nil nil)

(autoload 'reftex-notice-new "reftex-parse" "\
Hook to handshake with RefTeX after something new has been inserted.

\(fn &optional N FORCE)" nil nil)

(autoload 'reftex-what-macro-safe "reftex-parse" "\
Call `reftex-what-macro' with special syntax table.

\(fn WHICH &optional BOUND)" nil nil)

(autoload 'reftex-what-macro "reftex-parse" "\
Find out if point is within the arguments of any TeX-macro.
The return value is either (\"\\macro\" . (point)) or a list of them.

If WHICH is nil, immediately return nil.
If WHICH is 1, return innermost enclosing macro.
If WHICH is t, return list of all macros enclosing point.
If WHICH is a list of macros, look only for those macros and return the
  name of the first macro in this list found to enclose point.
If the optional BOUND is an integer, bound backwards directed
  searches to this point.  If it is nil, limit to nearest \\section -
  like statement.

This function is pretty stable, but can be fooled if the text contains
things like \\macro{aa}{bb} where \\macro is defined to take only one
argument.  As RefTeX cannot know this, the string \"bb\" would still be
considered an argument of macro \\macro.

\(fn WHICH &optional BOUND)" nil nil)

(autoload 'reftex-what-environment "reftex-parse" "\
Find out if point is inside a LaTeX environment.
The return value is (e.g.) either (\"equation\" . (point)) or a list of
them.

If WHICH is nil, immediately return nil.
If WHICH is 1, return innermost enclosing environment.
If WHICH is t, return list of all environments enclosing point.
If WHICH is a list of environments, look only for those environments and
  return the name of the first environment in this list found to enclose
  point.

If the optional BOUND is an integer, bound backwards directed searches to
this point.  If it is nil, limit to nearest \\section - like statement.

\(fn WHICH &optional BOUND)" nil nil)

(autoload 'reftex-what-special-env "reftex-parse" "\
Run the special environment parsers and return the matches.

The return value is (e.g.) either (\"my-parser-function\" . (point))
or a list of them.

If WHICH is nil, immediately return nil.
If WHICH is 1, return innermost enclosing environment.
If WHICH is t, return list of all environments enclosing point.
If WHICH is a list of environments, look only for those environments and
  return the name of the first environment in this list found to enclose
  point.

\(fn WHICH &optional BOUND)" nil nil)

(autoload 'reftex-nth-arg "reftex-parse" "\
Return the Nth following {} or [] parentheses content.
OPT-ARGS is a list of argument numbers which are optional.

\(fn N &optional OPT-ARGS)" nil nil)

(autoload 'reftex-move-over-touching-args "reftex-parse" nil nil nil)

(autoload 'reftex-init-section-numbers "reftex-parse" "\
Initialize section numbers with zeros or with what is found in the TOC-ENTRY.

\(fn &optional TOC-ENTRY APPENDIX)" nil nil)

(autoload 'reftex-section-number "reftex-parse" "\
Return a string with the current section number.
When LEVEL is non-nil, increase section numbers on that level.

\(fn &optional LEVEL STAR)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-parse"
;;;;;;  "reftex-parse.el" (0 0 0 0))
;;; Generated autoloads from reftex-parse.el

(register-definition-prefixes "reftex-parse" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-ref" "reftex-ref.el" "abb03011acf9033b7372a1ecc048c148")
;;; Generated autoloads from reftex-ref.el

(autoload 'reftex-label-location "reftex-ref" "\
Return the environment or macro which determines the label type at point.
If optional BOUND is an integer, limit backward searches to that point.

\(fn &optional BOUND)" nil nil)

(autoload 'reftex-label-info-update "reftex-ref" "\


\(fn CELL)" nil nil)

(autoload 'reftex-label-info "reftex-ref" "\


\(fn LABEL &optional FILE BOUND DERIVE ENV-OR-MAC)" nil nil)

(autoload 'reftex-label "reftex-ref" "\
Insert a unique label.  Return the label.
If ENVIRONMENT is given, don't bother to find out yourself.
If NO-INSERT is non-nil, do not insert label into buffer.
With prefix arg, force to rescan document first.
When you are prompted to enter or confirm a label, and you reply with
just the prefix or an empty string, no label at all will be inserted.
A new label is also recorded into the label list.
This function is controlled by the settings of reftex-insert-label-flags.

\(fn &optional ENVIRONMENT NO-INSERT)" t nil)

(autoload 'reftex-reference "reftex-ref" "\
Make a LaTeX reference.  Look only for labels of a certain TYPE.
With prefix arg, force to rescan buffer for labels.  This should only be
necessary if you have recently entered labels yourself without using
reftex-label.  Rescanning of the buffer can also be requested from the
label selection menu.
The function returns the selected label or nil.
If NO-INSERT is non-nil, do not insert \\ref command, just return label.
When called with 2 \\[universal-argument] prefix args, disable magic word recognition.

\(fn &optional TYPE NO-INSERT CUT)" t nil)

(autoload 'reftex-query-label-type "reftex-ref" nil nil nil)

(autoload 'reftex-show-label-location "reftex-ref" "\


\(fn DATA FORWARD NO-REVISIT &optional STAY ERROR)" nil nil)

(autoload 'reftex-goto-label "reftex-ref" "\
Prompt for a label (with completion) and jump to the location of this label.
Optional prefix argument OTHER-WINDOW goes to the label in another window.

\(fn &optional OTHER-WINDOW)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-ref" "reftex-ref.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from reftex-ref.el

(register-definition-prefixes "reftex-ref" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-sel" "reftex-sel.el" "991208663896679148a7e5d2faa644d0")
;;; Generated autoloads from reftex-sel.el

(autoload 'reftex-select-label-mode "reftex-sel" "\
Major mode for selecting a label in a LaTeX document.
This buffer was created with RefTeX.
It only has a meaningful keymap when you are in the middle of a
selection process.
To select a label, move the cursor to it and press RET.
Press `?' for a summary of important key bindings.

During a selection process, these are the local bindings.

\\{reftex-select-label-mode-map}

\(fn)" t nil)

(autoload 'reftex-select-bib-mode "reftex-sel" "\
Major mode for selecting a citation key in a LaTeX document.
This buffer was created with RefTeX.
It only has a meaningful keymap when you are in the middle of a
selection process.
In order to select a citation, move the cursor to it and press RET.
Press `?' for a summary of important key bindings.

During a selection process, these are the local bindings.

\\{reftex-select-label-mode-map}

\(fn)" t nil)

(autoload 'reftex-get-offset "reftex-sel" "\


\(fn BUF HERE-AM-I &optional TYPEKEY TOC INDEX FILE)" nil nil)

(autoload 'reftex-insert-docstruct "reftex-sel" "\


\(fn BUF TOC LABELS INDEX-ENTRIES FILES CONTEXT COUNTER SHOW-COMMENTED HERE-I-AM XR-PREFIX TOC-BUFFER)" nil nil)

(autoload 'reftex-find-start-point "reftex-sel" "\


\(fn FALLBACK &rest LOCATIONS)" nil nil)

(autoload 'reftex-select-item "reftex-sel" "\


\(fn PROMPT HELP-STRING KEYMAP &optional OFFSET CALL-BACK CB-FLAG)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-sel" "reftex-sel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from reftex-sel.el

(register-definition-prefixes "reftex-sel" '("reftex-"))

;;;***

;;;***

;;;### (autoloads nil "reftex-toc" "reftex-toc.el" "e51ba0b70d8a71373620fef7e6746eb4")
;;; Generated autoloads from reftex-toc.el

(autoload 'reftex-toc "reftex-toc" "\
Show the table of contents for the current document.
When called with a raw \\[universal-argument] prefix, rescan the document first.

\(fn &optional REBUILD REUSE)" t nil)

(autoload 'reftex-toc-recenter "reftex-toc" "\
Display the TOC window and highlight line corresponding to current position.

\(fn &optional ARG)" t nil)

(autoload 'reftex-toggle-auto-toc-recenter "reftex-toc" "\
Toggle the automatic recentering of the TOC window.
When active, leaving point idle will make the TOC window jump to the correct
section." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "reftex-toc" "reftex-toc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from reftex-toc.el

(register-definition-prefixes "reftex-toc" '("reftex-"))

;;;***

;;;***

(provide 'reftex-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; reftex-loaddefs.el ends here
