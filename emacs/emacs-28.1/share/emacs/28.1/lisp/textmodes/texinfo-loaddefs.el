;;; texinfo-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "makeinfo" "makeinfo.el" "b0255e6f40f3e11c0619953102f2991a")
;;; Generated autoloads from makeinfo.el

(autoload 'makeinfo-region "makeinfo" "\
Make Info file from region of current Texinfo file, and switch to it.

This command does not offer the `next-error' feature since it would
apply to a temporary file, not the original; use the `makeinfo-buffer'
command to gain use of `next-error'.

\(fn REGION-BEGINNING REGION-END)" t nil)

(autoload 'makeinfo-buffer "makeinfo" "\
Make Info file from current buffer.

Use the \\[next-error] command to move to the next error
\(if there are errors)." t nil)

(autoload 'makeinfo-recenter-compilation-buffer "makeinfo" "\
Redisplay `*compilation*' buffer so most recent output can be seen.
The last line of the buffer is displayed on
line LINE of the window, or centered if LINE is nil.

\(fn LINENUM)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "makeinfo" "makeinfo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from makeinfo.el

(register-definition-prefixes "makeinfo" '("makeinfo-"))

;;;***

;;;***

;;;### (autoloads nil "texnfo-upd" "texnfo-upd.el" "05fa32c7b71069f5e796d45832a2b86f")
;;; Generated autoloads from texnfo-upd.el

(autoload 'texinfo-make-menu "texnfo-upd" "\
Without any prefix argument, make or update a menu.
Make the menu for the section enclosing the node found following point.

A prefix argument means make or update menus
for nodes within or part of the marked region.

Whenever a menu exists, and is being updated, the descriptions that
are associated with node names in the pre-existing menu are
incorporated into the new menu.

Leaves trailing whitespace in a menu that lacks descriptions, so
descriptions will format well.  In general, a menu should contain
descriptions, because node names and section titles are often too
short to explain a node well.

\(fn &optional BEGINNING END)" t nil)

(autoload 'texinfo-all-menus-update "texnfo-upd" "\
Update every regular menu in a Texinfo file.
Update pre-existing master menu, if there is one.

Only single-file manuals are supported by this function.  For
multi-file manuals, use `texinfo-multiple-files-update'.

If called with a non-nil argument, this function first updates all the
nodes in the buffer before updating the menus.  Do NOT invoke this
command with an argument if your Texinfo file uses @node lines without
the `Next', `Previous', and `Up' pointers!

Indents the first line of descriptions, and leaves trailing whitespace
in a menu that lacks descriptions, so descriptions will format well.
In general, a menu should contain descriptions, because node names and
section titles are often too short to explain a node well.

\(fn &optional UPDATE-ALL-NODES-P)" t nil)

(autoload 'texinfo-start-menu-description "texnfo-upd" "\
In this menu entry, insert the node's section title as a description.
Position point at beginning of description ready for editing.
Do not insert a title if the line contains an existing description.

You will need to edit the inserted text since a useful description
complements the node name rather than repeats it as a title does." t nil)

(autoload 'texinfo-indent-menu-description "texnfo-upd" "\
Indent every description in menu following point to COLUMN.
Non-nil argument (prefix, if interactive) means indent every
description in every menu in the region.  Does not indent second and
subsequent lines of a multi-line description.

\(fn COLUMN &optional REGION-P)" t nil)

(autoload 'texinfo-master-menu "texnfo-upd" "\
Make a master menu for a whole Texinfo file.
Remove pre-existing master menu, if there is one.

This function supports only single-file manuals.  For multi-file
manuals, use `texinfo-multiple-files-update'.

This function creates or updates the @detailmenu section of a
master menu that follows the Top node.  It replaces any existing
detailed menu that follows the top node.  The detailed menu
includes every entry from all the other menus.  By default, the
existing menus, including the menu in the Top node, are not
updated according to the buffer contents, so all the menus should
be updated first using `texinfo-make-menu' or
`texinfo-all-menus-update', which see.  Alternatively, invoke
this function with a prefix argument, see below.

Non-nil, non-numeric argument (\\[universal-argument] prefix, if interactive) means
first update all existing menus in the buffer (incorporating
descriptions from pre-existing menus) before it constructs the
master menu.  If the argument is numeric (e.g., \"\\[universal-argument] 2\"),
update all existing nodes as well, by calling
`texinfo-update-node' on the entire file.  Warning: do NOT
invoke with a numeric argument if your Texinfo file uses @node
lines without the `Next', `Previous', `Up' pointers, as the
result could be an invalid Texinfo file!

The function removes and recreates the detailed part of an already
existing master menu.  This action assumes that the pre-existing
master menu uses the standard `texinfo-master-menu-header' for the
detailed menu.

The master menu has the following format, which is adapted from the
recommendation in the Texinfo Manual:

   * The first part contains the major nodes in the Texinfo file: the
     nodes for the chapters, chapter-like sections, and the major
     appendices.  This includes the indices, so long as they are in
     chapter-like sections, such as unnumbered sections.

   * The second and subsequent parts contain a listing of the other,
     lower level menus, in order.  This way, an inquirer can go
     directly to a particular node if he or she is searching for
     specific information.

Each of the menus in the detailed node listing is introduced by the
title of the section containing the menu.

Indents the first line of descriptions, and leaves trailing whitespace
in a menu that lacks descriptions, so descriptions will format well.
In general, a menu should contain descriptions, because node names and
section titles are often too short to explain a node well.

\(fn UPDATE-ALL-NODES-MENUS-P)" t nil)

(autoload 'texinfo-update-node "texnfo-upd" "\
Without any prefix argument, update the node in which point is located.
Interactively, a prefix argument means to operate on the region.

Warning: do NOT use this function if your Texinfo file uses @node
lines without the `Next', `Previous', `Up' pointers, because the
result could be an invalid Texinfo file due to known deficiencies
in this command: it does not support @ignore and @if* directives.

The functions for creating or updating nodes and menus, and their
keybindings, are:

    texinfo-update-node (&optional beginning end)    \\[texinfo-update-node]
    texinfo-every-node-update ()                \\[texinfo-every-node-update]
    texinfo-sequential-node-update (&optional region-p)

    texinfo-make-menu (&optional region-p)      \\[texinfo-make-menu]
    texinfo-all-menus-update ()                 \\[texinfo-all-menus-update]
    texinfo-master-menu ()

    texinfo-indent-menu-description (column &optional region-p)

The `texinfo-column-for-description' variable specifies the column to
which menu descriptions are indented. Its default value is 32.

\(fn &optional BEGINNING END)" t nil)

(autoload 'texinfo-every-node-update "texnfo-upd" "\
Update every node in a Texinfo file.

Warning: do NOT use this function if your Texinfo file uses @node
lines without the `Next', `Previous', `Up' pointers, because the
result could be an invalid Texinfo file due to known deficiencies
in this command: it does not support @ignore and @if* directives." t nil)

(autoload 'texinfo-sequential-node-update "texnfo-upd" "\
Update one node (or many) in a Texinfo file with sequential pointers.

This function causes the `Next' or `Previous' pointer to point to the
immediately preceding or following node, even if it is at a higher or
lower hierarchical level in the document.  Continually pressing `n' or
`p' takes you straight through the file.

Without any prefix argument, update the node in which point is located.
Non-nil argument (prefix, if interactive) means update the nodes in the
marked region.

This command makes it awkward to navigate among sections and
subsections; it should be used only for those documents that are meant
to be read like a novel rather than a reference, and for which the
Info `g*' command is inadequate.

\(fn &optional REGION-P)" t nil)

(autoload 'texinfo-insert-node-lines "texnfo-upd" "\
Insert missing `@node' lines in region of Texinfo file.
Non-nil argument (prefix, if interactive) means also to insert the
section titles as node names; and also to insert the section titles as
node names in pre-existing `@node' lines that lack names.

\(fn BEGINNING END &optional TITLE-P)" t nil)

(autoload 'texinfo-multiple-files-update "texnfo-upd" "\
Update first node pointers in each file included in OUTER-FILE;
create or update the `Top' level node pointers and the main menu in
the outer file that refers to such nodes.  This does not create or
update menus or pointers within the included files.

With optional MAKE-MASTER-MENU argument (prefix arg, if interactive),
insert a master menu in OUTER-FILE in addition to creating or updating
pointers in the first @node line in each included file and creating or
updating the `Top' level node pointers of the outer file.  This does
not create or update other menus and pointers within the included
files.

With optional UPDATE-EVERYTHING argument (numeric prefix arg, if
interactive), update all the menus and all the `Next', `Previous', and
`Up' pointers of all the files included in OUTER-FILE before inserting
a master menu in OUTER-FILE.  Also, update the `Top' level node
pointers of OUTER-FILE.  Do NOT invoke this command with a numeric prefix
arg, if your files use @node lines without the `Next', `Previous', `Up'
pointers, because this could produce invalid Texinfo files due to known
deficiencies in `texinfo-update-node': it does not support the @ignore
and @if... directives.

Notes:

  * this command does NOT save any files--you must save the
    outer file and any modified, included files.

  * except for the `Top' node, this command does NOT handle any
    pre-existing nodes in the outer file; hence, indices must be
    enclosed in an included file.

Requirements:

  * each of the included files must contain exactly one highest
    hierarchical level node,
  * this highest node must be the first node in the included file,
  * each highest hierarchical level node must be of the same type.

Thus, normally, each included file contains one, and only one,
chapter.

\(fn OUTER-FILE &optional MAKE-MASTER-MENU UPDATE-EVERYTHING)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "texnfo-upd" "texnfo-upd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from texnfo-upd.el

(register-definition-prefixes "texnfo-upd" '("texinfo-"))

;;;***

;;;***

(provide 'texinfo-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; texinfo-loaddefs.el ends here
