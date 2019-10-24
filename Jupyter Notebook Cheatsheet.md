# A Cheatsheet for Jupyter Notebook and Jupyter Lab

In order to help you program more quickly and effectively, we have produced a list of the most frequently used shortcuts in Jupyter.

We suggest you scan over these shortcuts in order to know what is here. Do not worry about remembering them; you will pick them up in good time.

## The Two Modes of Jupyter

Jupyter has two modes&mdash;editing mode and escape mode. You can use these keys to switch between the two.

* `esc` &ndash; Switch to escape mode.
* `enter` &ndash; Switch to edit mode.

## Cell-types

There are three cell-types in Jupyter: Markdown, Code and Raw. You will probably never use Raw. Markdown and Code are self-explanatory. If you know how to use Markdown for Github, you know how to use it for Jupyter. A guide to Markdown may be found at your local Google.

Switching between modes is non-destructive; it won't affect the contents.

The following commands must be executed in **escape mode**.

* `m` &ndash; Switch cell-type to Markdown.
* `y` &ndash; Switch cell-type to Code
* `r` &ndash; Switch cell-type to Raw.

## Navigating a Jupyter Notebook

In escape mode, one of the cells will be highlighted. We will refer to this cell as the **current cell**.

The following commands are best executed in **escape mode**. Some will partially work ineffectively in editing mode.

* `up-arrow` &ndash; Move the cell-highlighter one cell up.
* `down-arrow` &ndash; Move the cell-highlighter one cell down.

## Executing Cells

These commands may be executed in **both editing and escape mode**.

* `ctrl + enter` &ndash; Execute the current cell.
* `shift + enter` &ndash; Execute the current cell and move to the next cell below.
* `alt + enter` &ndash; Execute the current cell, make a new cell below, move to it, then enter editing mode.

## Adding New Cells

You can add cells in a position relative to the current cell.

* `a` &ndash; Add new cell *above* the current cell.
* `b` &ndash; Add new cell *below* the current cell.

## Quickly See Documentation

This is overlooked by beginners, who spend their time googling more than is necessary.

* `shift + tab` &ndash; View the documentation.

The documentation appears in a dialog-box. Press the plus icon at the top right to see the full documentation. This is a fickle shortcut, so you must ensure that the caret is inside the function's parathenses.

For example, if I am using `math.floor()`, I must have my caret inside the parantheses. If the function contains multiple paramters, it will work anywhere inside the function.

## Editing, Copying and Moving Cells

These commands will help you restructure your code. The commands are particularly useful for moving cells *between* notebooks.

The following commands must be executed in **escape mode**.

* `c` &ndash; Copy the highlighted cell.
* `x` &ndash; Cut the highlighted cell. (This is a copy followed by a deletion.)
* `v` &ndash; Paste the copied cell.
* `dd` &ndash; Delete the current cell.
* `z` &ndash; Undo last cell operation.
* `ctrl + z` &ndash; Redo last cell operation.

You can perform some of the above operations on multiple cells if you highlight multiple cells.

* `shift + up-arrow/down-arrow` or `shift + k/j` &ndash; Highlight multiple cells. Each additional up- or down-arrow is one more cell in that direction. Releasing the shift and pressing up or down will un-highlight the cells.

The following commands must be executed in **editing mode**.

* `ctrl + d` &ndash; Delete line of code at caret. 
