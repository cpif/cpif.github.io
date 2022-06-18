#!/usr/bin/fish

pandoc index.md -so docs/index.html --template=theme/default.html
pandoc README.md -so docs/about/index.html --template=theme/default.html

echo -e "---\ntitle: Posts\nabstract: \"Cpif's blog\"\n---\n\n" > pages/posts.md

for page in (ls posts/*.md | sort -r)
    set pageyear (sed -n 's/year: //gp' $page)
    set pagemonth (sed -n 's/month: //gp' $page)
    set pagename (basename $page .md).html
    set pagetitle (sed -n 's/^title: //p' $page)

    if ! test -d docs/$pageyear
        mkdir docs/$pageyear
    end
    if ! test -d docs/$pageyear/$pagemonth
        mkdir docs/$pageyear/$pagemonth
    end

    pandoc $page -so docs/$pageyear/$pagemonth/$pagename --template=theme/default.html
    echo "- [$pagetitle](/$pageyear/$pagemonth/$pagename)" >> pages/posts.md
end

for page in (ls pages/*.md)
    if ! test -d docs/(basename $page .md)/
        mkdir docs/(basename $page .md)/
    end
    pandoc $page -so docs/(basename $page .md)/index.html --template=theme/default.html
end

# vim:ft=sh:tw=0
