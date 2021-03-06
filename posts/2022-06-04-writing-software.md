---
abstract: "The writing stack 
  I use in lieu of Microsoft Word."
year: 2022
month: 06
day: 04
title: A Writing Stack
tags:
  - writsoft
---

I don't like Microsoft Word. Or Google Docs. Word crashes; its
feature list is amazing, but difficult to navigate;
synchronization problems make it behave erratically; its not
free. Google Docs is better, but I dislike having to work online.

This past year, I decided to explore alternative options to the
traditional word processor. At first, my motivations were simple:
I wanted something with a little more stability and a less
distracting interface.

While I was thinking about this, I was unrelatedly exploring the
utilities available in the UNIX shell. These are small little
computer programs that do simple tasks -- everything from listing
the files in a directory, to sorting lists alphabetically, to
printing the current date and time. And more complicated things,
as well.

Eventually, these two interests began to converge, and I put
together -- thanks in no small part to the wealth of tutorials
available online -- a writing "stack" that has more-or-less
replaced Word and Docs for many of my writing tasks.

I call it a "stack" because most of the features that are rolled
into one program -- the word processor -- are now, for me,
separate programs. This creates a greater degree of flexibility:
if one of the tools fails, it can be replaced with another, while
the rest remain stable. All of these are free -- and a few may
already be installed on your computer.

# The Stack

**[Nvim]**: for text editing. When I write, this is the program I
write in. I'll write more about why I like nvim in particular in
a future post. For now, the important thing to point out is that
any text editor will do: Notepad is the default on Windows,
TextEdit on Mac. All that matters is that the program should edit
plain text files. These are much simpler, smaller files than Word
documents or PDFs, and consequently load more quickly and are
much less prone to crashes. They're also, usually much
less feature-rich and therefore less distracting.

**[Pandoc]**: for typesetting and file conversion. This program
converts the plaintext files I compose into more familiar formats
like Word and PDF. It can also convert to PowerPoint, HTML, and a
number of other formats. Pandoc was developed by John MacFarlane,
professor of Philosophy at Berkeley.

**[Markdown]**: for formatting. Markdown isn't a program, it's a
convention for specifying text formatting. For example, if you
type `*this*` or `_this_`, markdown understands that you want to
italicize *this*. If you begin a line with `>` it will understand
that line as a blockquote. When pandoc converts your text file to
Word, it will automatically take those formatting symbols into
account.

**[Git]**: for version control. This is the equivalent of Word's
"track changes" feature, with a little twist. I like to call it a
"dumb" version of track changes: it does not automatically keep
track of changes to your files; instead, it waits for you to ask
it to note any changes you've made, and prompts you to leave a
comment explaining what you've done. This takes a little getting
used to if, like me, you're accustomed to software keeping track
of changes you've made automatically. But it forces you to be
more conscious of and thoughtful about your revision process.

# Why?

Aside from ditching the traditional word processor, here are some
reasons you might want to explore some of these tools:

-   As I said, they're more stable and more distraction-free.
-   If you're worried (or hopeful) that Microsoft will go out of
    business, the files you produce in these ways will still be
    available to you. They can be opened in a wide variety of
    (free programs) -- so if anything breaks or goes off the
    market, your writing can still be opened and read, in a file
    format that hasn't changed for at least four decades.
-   It's cool: you'll look like a weirdo, and you'll exchange
    corporate software for something more venerable and
    unregulated.

[Nvim]:      https://neovim.io/
[Pandoc]:    https://pandoc.org/
[Markdown]:  https://en.wikipedia.org/wiki/Markdown
[Git]:       https://git-scm.com/
