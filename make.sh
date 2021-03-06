#!/usr/bin/env bash

# Source and output folders
SRC=src/slides
OUT=docs/slides

# Pages to build
PAGES=$SRC/*.md

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
    -t revealjs \
    -o $htmlfile $mdfile

done
