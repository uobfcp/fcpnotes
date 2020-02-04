#!/usr/bin/env bash

# Source and output folders
SRC=src
OUT=html

# Pages to build
PAGES=$SRC/*.md
SLIDES=$SRC/slides/*.md

CSS=css/style.css

# Names of css and template files
TITLE="EMAT10006 - Further Computer Programming"
CSSFILE=style.css
TEMPLATE=$SRC/template.html

for mdfile in $PAGES; do
  pagename=$(basename "${mdfile%.*}")
  htmlfile=$OUT/$pagename.html

  echo Compiling $mdfile  to  $htmlfile  ...

  # Pandoc command:
  pandoc -s \
    --css $CSS \
    --title-prefix "$TITLE" \
    --variable title:"$TITLE"\
    -o $htmlfile $mdfile

done
