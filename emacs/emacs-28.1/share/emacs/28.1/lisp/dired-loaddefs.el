;;; dired-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "dired-aux" "dired-aux.el" "99cd38b34c958fc97aaedaf8cdb14a24")
;;; Generated autoloads from dired-aux.el

(autoload 'dired-diff "dired-aux" "\
Compare file at point with FILE using `diff'.
If called interactively, prompt for FILE.
If the mark is active in Transient Mark mode, use the file at the mark
as the default for FILE.  (That's the mark set by \\[set-mark-command],
not by Dired's \\[dired-mark] command.)
If the file at point has a backup file, use that as the default FILE.
If the file at point is a backup file, use its original, if that exists
and can be found.  Note that customizations of `backup-directory-alist'
and `make-backup-file-name-function' change where this function searches
for the backup file, and affect its ability to find the original of a
backup file.

FILE is the first argument given to the `diff' function.  The file at
point is the second argument given to `diff'.

With prefix arg, prompt for second argument SWITCHES, which is
the string of command switches used as the third argument of `diff'.

\(fn FILE &optional SWITCHES)" t nil)

(autoload 'dired-backup-diff "dired-aux" "\
Diff this file with its backup file or vice versa.
Uses the latest backup, if there are several numerical backups.
If this file is a backup, diff it with its original.
The backup file is the first file given to `diff'.
With prefix arg, prompt for argument SWITCHES which is options for `diff'.

\(fn &optional SWITCHES)" t nil)

(autoload 'dired-compare-directories "dired-aux" "\
Mark files with different file attributes in two dired buffers.
Compare file attributes of files in the current directory
with file attributes in directory DIR2 using PREDICATE on pairs of files
with the same name.  Mark files for which PREDICATE returns non-nil.
Mark files with different names if PREDICATE is nil (or interactively
with empty input at the predicate prompt).

PREDICATE is a Lisp expression that can refer to the following variables:

    size1, size2   - file size in bytes
    mtime1, mtime2 - last modification time in seconds, as a float
    fa1, fa2       - list of file attributes
                     returned by function `file-attributes'

    where 1 refers to attribute of file in the current dired buffer
    and 2 to attribute of file in second dired buffer.

Examples of PREDICATE:

    (> mtime1 mtime2) - mark newer files
    (not (= size1 size2)) - mark files with different sizes
    (not (string= (file-attribute-modes fa1)  - mark files with different modes
                  (file-attribute-modes fa2)))
    (not (and (= (file-attribute-user-id fa1) - mark files with different UID
                 (file-attribute-user-id fa2))
              (= (file-attribute-group-id fa1) - and GID.
                 (file-attribute-group-id fa2))))

If the region is active in Transient Mark mode, mark files
only in the active region if `dired-mark-region' is non-nil.

\(fn DIR2 PREDICATE)" t nil)

(autoload 'dired-do-chmod "dired-aux" "\
Change the mode of the marked (or next ARG) files.
Both octal numeric modes like `644' and symbolic modes like `g+w'
are supported.  Type M-n to pull the file attributes of the file
at point into the minibuffer.

See Info node `(coreutils)File permissions' for more information.
Alternatively, see the man page for \"chmod(1)\".

Note that on MS-Windows only the `w' (write) bit is meaningful:
resetting it makes the file read-only.  Changing any other bit
has no effect on MS-Windows.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-chgrp "dired-aux" "\
Change the group of the marked (or next ARG) files.
Type M-n to pull the file attributes of the file at point
into the minibuffer.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-chown "dired-aux" "\
Change the owner of the marked (or next ARG) files.
Type M-n to pull the file attributes of the file at point
into the minibuffer.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-touch "dired-aux" "\
Change the timestamp of the marked (or next ARG) files.
This calls touch.
Type M-n to pull the file attributes of the file at point
into the minibuffer.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-print "dired-aux" "\
Print the marked (or next ARG) files.
Uses the shell command coming from variables `lpr-command' and
`lpr-switches' as default.

\(fn &optional ARG)" t nil)

(autoload 'dired-clean-directory "dired-aux" "\
Flag numerical backups for deletion.
Spares `dired-kept-versions' latest versions, and `kept-old-versions' oldest.
Positive prefix arg KEEP overrides `dired-kept-versions';
Negative prefix arg KEEP overrides `kept-old-versions' with KEEP made positive.

To clear the flags on these files, you can use \\[dired-flag-backup-files]
with a prefix argument.

\(fn KEEP)" t nil)

(autoload 'dired-do-async-shell-command "dired-aux" "\
Run a shell command COMMAND on the marked files asynchronously.

Like `dired-do-shell-command', but adds `&' at the end of COMMAND
to execute it asynchronously.

When operating on multiple files, asynchronous commands
are executed in the background on each file in parallel.
In shell syntax this means separating the individual commands
with `&'.  However, when COMMAND ends in `;' or `;&' then commands
are executed in the background on each file sequentially waiting
for each command to terminate before running the next command.
In shell syntax this means separating the individual commands with `;'.

The output appears in the buffer named by `shell-command-buffer-name-async'.

\(fn COMMAND &optional ARG FILE-LIST)" t nil)

(autoload 'dired-do-shell-command "dired-aux" "\
Run a shell command COMMAND on the marked files.
If no files are marked or a numeric prefix arg is given,
the next ARG files are used.  Just \\[universal-argument] means the current file.
The prompt mentions the file(s) or the marker, as appropriate.

If there is a `*' in COMMAND, surrounded by whitespace, this runs
COMMAND just once with the entire file list substituted there.

If there is no `*', but there is a `?' in COMMAND, surrounded by
whitespace, or a `\\=`?\\=`' this runs COMMAND on each file
individually with the file name substituted for `?' or `\\=`?\\=`'.

Otherwise, this runs COMMAND on each file individually with the
file name added at the end of COMMAND (separated by a space).

`*' and `?' when not surrounded by whitespace nor `\\=`' have no special
significance for `dired-do-shell-command', and are passed through
normally to the shell, but you must confirm first.

If you want to use `*' as a shell wildcard with whitespace around
it, write `*\"\"' in place of just `*'.  This is equivalent to just
`*' in the shell, but avoids Dired's special handling.

If COMMAND ends in `&', `;', or `;&', it is executed in the
background asynchronously, and the output appears in the buffer named
by `shell-command-buffer-name-async'.  When operating on multiple files
and COMMAND ends in `&', the shell command is executed on each file
in parallel.  However, when COMMAND ends in `;' or `;&', then commands
are executed in the background on each file sequentially waiting for
each command to terminate before running the next command.  You can
also use `dired-do-async-shell-command' that automatically adds `&'.

Otherwise, COMMAND is executed synchronously, and the output
appears in the buffer named by `shell-command-buffer-name'.

This feature does not try to redisplay Dired buffers afterward, as
there's no telling what files COMMAND may have changed.
Type \\[dired-do-redisplay] to redisplay the marked files.

When COMMAND runs, its working directory is the top-level directory
of the Dired buffer, so output files usually are created there
instead of in a subdir.

In a noninteractive call (from Lisp code), you must specify
the list of file names explicitly with the FILE-LIST argument, which
can be produced by `dired-get-marked-files', for example.

`dired-guess-shell-alist-default' and
`dired-guess-shell-alist-user' are consulted when the user is
prompted for the shell command to use interactively.

\(fn COMMAND &optional ARG FILE-LIST)" t nil)

(autoload 'dired-run-shell-command "dired-aux" "\


\(fn COMMAND)" nil nil)

(autoload 'dired-do-kill-lines "dired-aux" "\
Kill all marked lines (not the files).
With a prefix argument, kill that many lines starting with the current line.
\(A negative argument kills backward.)

If you use this command with a prefix argument to kill the line
for a file that is a directory, which you have inserted in the
Dired buffer as a subdirectory, then it deletes that subdirectory
from the buffer as well.

To kill an entire subdirectory (without killing its line in the
parent directory), go to its directory header line and use this
command with a prefix argument (the value does not matter).

To undo the killing, the undo command can be used as normally.

This function returns the number of killed lines.

FMT is a format string used for messaging the user about the
killed lines, and defaults to \"Killed %d line%s.\" if not
present.  A FMT of \"\" will suppress the messaging.

\(fn &optional ARG FMT)" t nil)

(autoload 'dired-do-compress-to "dired-aux" "\
Compress selected files and directories to an archive.
Prompt for the archive file name.
Choose the archiving command based on the archive file-name extension
and `dired-compress-files-alist'." t nil)

(autoload 'dired-compress-file "dired-aux" "\
Compress or uncompress FILE.
Return the name of the compressed or uncompressed file.
Return nil if no change in files.

\(fn FILE)" nil nil)

(autoload 'dired-query "dired-aux" "\
Format PROMPT with ARGS, query user, and store the result in SYM.
The return value is either nil or t.

The user may type y or SPC to accept once; n or DEL to skip once;
! to accept this and subsequent queries; or q or ESC to decline
this and subsequent queries.

If SYM is already bound to a non-nil value, this function may
return automatically without querying the user.  If SYM is !,
return t; if SYM is q or ESC, return nil.

\(fn SYM PROMPT &rest ARGS)" nil nil)

(autoload 'dired-do-compress "dired-aux" "\
Compress or uncompress marked (or next ARG) files.
If invoked on a directory, compress all of the files in
the directory and all of its subdirectories, recursively,
into a .tar.gz archive.
If invoked on a .tar.gz or a .tgz or a .zip or a .7z archive,
uncompress and unpack all the files in the archive.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-byte-compile "dired-aux" "\
Byte compile marked (or next ARG) Emacs Lisp files.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-load "dired-aux" "\
Load the marked (or next ARG) Emacs Lisp files.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-redisplay "dired-aux" "\
Redisplay all marked (or next ARG) files.
If on a subdir line, redisplay that subdirectory.  In that case,
a prefix arg lets you edit the `ls' switches used for the new listing.

Dired remembers switches specified with a prefix arg, so that reverting
the buffer will not reset them.  However, using `dired-undo' to re-insert
or delete subdirectories can bypass this machinery.  Hence, you sometimes
may have to reset some subdirectory switches after a `dired-undo'.
You can reset all subdirectory switches to the default using
\\<dired-mode-map>\\[dired-reset-subdir-switches].
See Info node `(emacs)Subdir switches' for more details.

\(fn &optional ARG TEST-FOR-SUBDIR)" t nil)

(autoload 'dired-add-file "dired-aux" "\


\(fn FILENAME &optional MARKER-CHAR)" nil nil)

(autoload 'dired-remove-file "dired-aux" "\
Remove entry FILE on each dired buffer.
Note this doesn't delete FILE in the file system.
See `dired-delete-file' in case you wish that.

\(fn FILE)" nil nil)

(autoload 'dired-relist-file "dired-aux" "\
Create or update the line for FILE in all Dired buffers it would belong in.

\(fn FILE)" nil nil)

(autoload 'dired-copy-file "dired-aux" "\


\(fn FROM TO OK-FLAG)" nil nil)

(autoload 'dired-rename-file "dired-aux" "\
Rename FILE to NEWNAME.
Signal a `file-already-exists' error if a file NEWNAME already exists
unless OK-IF-ALREADY-EXISTS is non-nil.

\(fn FILE NEWNAME OK-IF-ALREADY-EXISTS)" nil nil)

(autoload 'dired-create-directory "dired-aux" "\
Create a directory called DIRECTORY.
Parent directories of DIRECTORY are created as needed.
If DIRECTORY already exists, signal an error.

\(fn DIRECTORY)" t nil)

(autoload 'dired-create-empty-file "dired-aux" "\
Create an empty file called FILE.
Add a new entry for the new file in the Dired buffer.
Parent directories of FILE are created as needed.
If FILE already exists, signal an error.

\(fn FILE)" t nil)

(autoload 'dired-do-copy "dired-aux" "\
Copy all marked (or next ARG) files, or copy the current file.
ARG has to be numeric for above functionality.  See
`dired-get-marked-files' for more details.

When operating on just the current file, prompt for the new name.

When operating on multiple or marked files, prompt for a target
directory, and make the new copies in that directory, with the
same names as the original files.  The initial suggestion for the
target directory is the Dired buffer's current directory (or, if
`dired-dwim-target' is non-nil, the current directory of a
neighboring Dired window).

If `dired-copy-preserve-time' is non-nil, this command preserves
the modification time of each old file in the copy, similar to
the \"-p\" option for the \"cp\" shell command.

This command copies symbolic links by creating new ones,
similar to the \"-d\" option for the \"cp\" shell command.
But if `dired-copy-dereference' is non-nil, the symbolic
links are dereferenced and then copied, similar to the \"-L\"
option for the \"cp\" shell command.  If ARG is a cons with
element 4 (`\\[universal-argument]'), the inverted value of
`dired-copy-dereference' will be used.

Also see `dired-do-revert-buffer'.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-symlink "dired-aux" "\
Make symbolic links to current file or all marked (or next ARG) files.
When operating on just the current file, you specify the new name.
When operating on multiple or marked files, you specify a directory
and new symbolic links are made in that directory
with the same names that the files currently have.  The default
suggested for the target directory depends on the value of
`dired-dwim-target', which see.

For relative symlinks, use \\[dired-do-relsymlink].

Also see `dired-do-revert-buffer'.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-hardlink "dired-aux" "\
Add names (hard links) current file or all marked (or next ARG) files.
When operating on just the current file, you specify the new name.
When operating on multiple or marked files, you specify a directory
and new hard links are made in that directory
with the same names that the files currently have.  The default
suggested for the target directory depends on the value of
`dired-dwim-target', which see.

Also see `dired-do-revert-buffer'.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-rename "dired-aux" "\
Rename current file or all marked (or next ARG) files.
When renaming just the current file, you specify the new name.
When renaming multiple or marked files, you specify a directory.
This command also renames any buffers that are visiting the files.
The default suggested for the target directory depends on the value
of `dired-dwim-target', which see.

Also see `dired-do-revert-buffer'.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-rename-regexp "dired-aux" "\
Rename selected files whose names match REGEXP to NEWNAME.

With non-zero prefix argument ARG, the command operates on the next ARG
files.  Otherwise, it operates on all the marked files, or the current
file if none are marked.

As each match is found, the user must type a character saying
  what to do with it.  For directions, type \\[help-command] at that time.
NEWNAME may contain \\=\\<n> or \\& as in `query-replace-regexp'.
REGEXP defaults to the last regexp used.

With a zero prefix arg, renaming by regexp affects the absolute file name.
Normally, only the non-directory part of the file name is used and changed.

\(fn REGEXP NEWNAME &optional ARG WHOLE-NAME)" t nil)

(autoload 'dired-do-copy-regexp "dired-aux" "\
Copy selected files whose names match REGEXP to NEWNAME.
See function `dired-do-rename-regexp' for more info.

\(fn REGEXP NEWNAME &optional ARG WHOLE-NAME)" t nil)

(autoload 'dired-do-hardlink-regexp "dired-aux" "\
Hardlink selected files whose names match REGEXP to NEWNAME.
See function `dired-do-rename-regexp' for more info.

\(fn REGEXP NEWNAME &optional ARG WHOLE-NAME)" t nil)

(autoload 'dired-do-symlink-regexp "dired-aux" "\
Symlink selected files whose names match REGEXP to NEWNAME.
See function `dired-do-rename-regexp' for more info.

\(fn REGEXP NEWNAME &optional ARG WHOLE-NAME)" t nil)

(autoload 'dired-upcase "dired-aux" "\
Rename all marked (or next ARG) files to upper case.

\(fn &optional ARG)" t nil)

(autoload 'dired-downcase "dired-aux" "\
Rename all marked (or next ARG) files to lower case.

\(fn &optional ARG)" t nil)

(autoload 'dired-maybe-insert-subdir "dired-aux" "\
Insert this subdirectory into the same dired buffer.
If it is already present, just move to it (type \\[dired-do-redisplay] to refresh),
  else inserts it at its natural place (as `ls -lR' would have done).
With a prefix arg, you may edit the ls switches used for this listing.
  You can add `R' to the switches to expand the whole tree starting at
  this subdirectory.
This function takes some pains to conform to `ls -lR' output.

Dired remembers switches specified with a prefix arg, so that reverting
the buffer will not reset them.  However, using `dired-undo' to re-insert
or delete subdirectories can bypass this machinery.  Hence, you sometimes
may have to reset some subdirectory switches after a `dired-undo'.
You can reset all subdirectory switches to the default using
\\<dired-mode-map>\\[dired-reset-subdir-switches].
See Info node `(emacs)Subdir switches' for more details.

\(fn DIRNAME &optional SWITCHES NO-ERROR-IF-NOT-DIR-P)" t nil)

(autoload 'dired-insert-subdir "dired-aux" "\
Insert this subdirectory into the same Dired buffer.
If it is already present, overwrite the previous entry;
  otherwise, insert it at its natural place (as `ls -lR' would
  have done).
With a prefix arg, you may edit the `ls' switches used for this listing.
  You can add `R' to the switches to expand the whole tree starting at
  this subdirectory.
This function takes some pains to conform to `ls -lR' output.

\(fn DIRNAME &optional SWITCHES NO-ERROR-IF-NOT-DIR-P)" t nil)

(autoload 'dired-prev-subdir "dired-aux" "\
Go to previous subdirectory, regardless of level.
When called interactively and not on a subdir line, go to this subdir's line.

\(fn ARG &optional NO-ERROR-IF-NOT-FOUND NO-SKIP)" t nil)

(autoload 'dired-goto-subdir "dired-aux" "\
Go to end of header line of DIR in this dired buffer.
Return value of point on success, otherwise return nil.
The next char is \\n.

\(fn DIR)" t nil)

(autoload 'dired-mark-subdir-files "dired-aux" "\
Mark all files except `.' and `..' in current subdirectory.
If the Dired buffer shows multiple directories, this command
marks the files listed in the subdirectory that point is in." t nil)

(autoload 'dired-kill-subdir "dired-aux" "\
Remove all lines of current subdirectory.
Lower levels are unaffected.

\(fn &optional REMEMBER-MARKS)" t nil)

(autoload 'dired-tree-up "dired-aux" "\
Go up ARG levels in the dired tree.

\(fn ARG)" t nil)

(autoload 'dired-tree-down "dired-aux" "\
Go down in the dired tree." t nil)

(autoload 'dired-hide-subdir "dired-aux" "\
Hide or unhide the current subdirectory and move to next directory.
Optional prefix arg is a repeat factor.
Use \\[dired-hide-all] to (un)hide all directories.

\(fn ARG)" t nil)

(autoload 'dired-hide-all "dired-aux" "\
Hide all subdirectories, leaving only their header lines.
If there is already something hidden, make everything visible again.
Use \\[dired-hide-subdir] to (un)hide a particular subdirectory.

\(fn &optional IGNORED)" t nil)

(autoload 'dired-isearch-filenames-setup "dired-aux" "\
Set up isearch to search in Dired file names.
Intended to be added to `isearch-mode-hook'." nil nil)

(autoload 'dired-isearch-filenames "dired-aux" "\
Search for a string using Isearch only in file names in the Dired buffer." t nil)

(autoload 'dired-isearch-filenames-regexp "dired-aux" "\
Search for a regexp using Isearch only in file names in the Dired buffer." t nil)

(autoload 'dired-do-isearch "dired-aux" "\
Search for a string through all marked files using Isearch." t nil)

(autoload 'dired-do-isearch-regexp "dired-aux" "\
Search for a regexp through all marked files using Isearch." t nil)

(autoload 'dired-do-search "dired-aux" "\
Search through all marked files for a match for REGEXP.
If no files are marked, search through the file under point.

Stops when a match is found.

To continue searching for next match, use command \\[fileloop-continue].

\(fn REGEXP)" t nil)

(autoload 'dired-do-query-replace-regexp "dired-aux" "\
Do `query-replace-regexp' of FROM with TO, on all marked files.
Third arg DELIMITED (prefix arg) means replace only word-delimited matches.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional DELIMITED)" t nil)

(autoload 'dired-do-find-regexp "dired-aux" "\
Find all matches for REGEXP in all marked files.

If no files are marked, use the file under point.

For any marked directory, all of its files are searched recursively.
However, files matching `grep-find-ignored-files' and subdirectories
matching `grep-find-ignored-directories' are skipped in the marked
directories.

REGEXP should use constructs supported by your local `grep' command.

\(fn REGEXP)" t nil)

(autoload 'dired-do-find-regexp-and-replace "dired-aux" "\
Replace matches of FROM with TO, in all marked files.

If no files are marked, use the file under point.

For any marked directory, matches in all of its files are replaced,
recursively.  However, files matching `grep-find-ignored-files'
and subdirectories matching `grep-find-ignored-directories' are skipped
in the marked directories.

REGEXP should use constructs supported by your local `grep' command.

\(fn FROM TO)" t nil)

(autoload 'dired-show-file-type "dired-aux" "\
Print the type of FILE, according to the `file' command.
If you give a prefix to this command, and FILE is a symbolic
link, then the type of the file linked to by FILE is printed
instead.

\(fn FILE &optional DEREF-SYMLINKS)" t nil)

(autoload 'dired-vc-next-action "dired-aux" "\
Do the next version control operation on marked files/directories.
When only files are marked then call `vc-next-action' with the
same value of the VERBOSE argument.
When also directories are marked then call `vc-dir' and mark
the same files/directories in the VC-Dir buffer that were marked
in the Dired buffer.

\(fn VERBOSE)" t nil)

(autoload 'dired-vc-deduce-fileset "dired-aux" "\


\(fn &optional STATE-MODEL-ONLY-FILES NOT-STATE-CHANGING)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "dired-aux" "dired-aux.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dired-aux.el

(register-definition-prefixes "dired-aux" '("dired-" "minibuffer-default-add-dired-shell-commands"))

;;;***

;;;***

;;;### (autoloads nil "dired-x" "dired-x.el" "7789c2dde72eb26c67247bea4d50a8cf")
;;; Generated autoloads from dired-x.el

(autoload 'dired-omit-mode "dired-x" "\
Toggle omission of uninteresting files in Dired (Dired-Omit mode).

This is a minor mode.  If called interactively, toggle the `Dired-Omit
mode' mode.  If the prefix argument is positive, enable the mode, and
if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `dired-omit-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

Dired-Omit mode is a buffer-local minor mode.  When enabled in a
Dired buffer, Dired does not list files whose filenames match
regexp `dired-omit-files', nor files ending with extensions in
`dired-omit-extensions'.

To enable omitting in every Dired buffer, you can put this in
your init file:

  (add-hook \\='dired-mode-hook (lambda () (dired-omit-mode)))

See Info node `(dired-x) Omitting Variables' for more information.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-relsymlink "dired-x" "\
Relative symlink all marked (or next ARG) files into a directory.
Otherwise make a relative symbolic link to the current file.
This creates relative symbolic links like

    foo -> ../bar/foo

not absolute ones like

    foo -> /ugly/file/name/that/may/change/any/day/bar/foo

For absolute symlinks, use \\[dired-do-symlink].

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dired-x" "dired-x.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dired-x.el

(register-definition-prefixes "dired-x" '("dired-" "virtual-dired"))

;;;***

;;;***

(provide 'dired-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dired-loaddefs.el ends here
