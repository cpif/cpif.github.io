---
abstract: "Using sed and wget to create useful textfiles from
  websites."
year: 2022
month: 06
day: 14
title: Using Sed on Websites
---

Lately, I've been using two non-interactive text editors -- sed
and awk -- to extract useful information from webpages. It's not
scraping: scraping is automated, and aims at generating tons of
data. What I'm doing involves whittling a large amount of
information down to readable, usable textfiles.

For example, I recently discovered [Hexwords] -- a charming
website that lists hexadecimal colors which are also English
words (or at least resemble them). However, a number of the
so-called "words" aren't word-y enough for my liking; for
example, "biased" is actually `b1a5ed`. I wanted a list of only
the wordiest color words in a textfile for my personal reference.
Here's what I did.

First, I downloaded the raw html of the site, then I inspected it
for patterns with `less`:

```
wget https://hexwords.netlify.app/
less index.html
```

Thankfully, each word entry occupies a line all by itself. It
looks like this:

```
        </li><li class="svelte-1m9ptdb" style="--color: #C0FFEE;"><button class="svelte-1m9ptdb" style="color: black;">#C0FFEE
```

I used one sed command to extract only those lines from the html:

```
sed -n '/#[A-Z]\{6,\}$/p' index.html
```

The `-n` flag tells sed not to print anything we don't want;
`[A-Z]` tells it to match only capitalized characters from A to
Z; `\{6,\}` to match at least six of those characters; and `$`
that those six letters should occur at the end of the line.

By piping the results of this command back into sed, everything
else in the line can be deleted:

```
sed 's/^.*>//g'
```

The entire command looks like this:

```
sed -n '/#[A-Z0]\{6,\}$/p' index.html |\
sed 's/^.*>//g' > hexwords.txt
```

You'll notice I added a `0` to the earlier `[A-Z]`. This is to
keep "words" like `C0FFEE` and `D00D00` -- which look close
enough to the real thing to satisfy me. The `> hexwords.txt` at
the end writes the results to a textfile.

The output text looks like this:

```
#C0FFEE
#DECADE
#FACADE
#DEC0DE
#BEADED
#B00B00
#BEDDED
#DEFACE
#BA0BAB
#ACCEDE
#D00DAD
#AB0DED
#BACCAE
#BAFFED
#BEEBEE
#BEEFED
#B0BBED
#B0FFED
#B00BED
#B00C00
#CABBED
#C0DDED
#C00C00
#C00EED
#DABBED
#DAD0ED
#DAFFED
#DEEDED
#D0FFED
#D00D00
#EFFACE
#F0BBED
```

Pretty good! I picked `D00D00`, `DECADE`, and `EFFACE` as theme
colors for my site.

[Hexwords]: https://hexwords.netlify.app/
