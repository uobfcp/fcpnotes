#!/usr/bin/env bash

# Source and output folders
SRC=.
OUT=.

# Pages to build
PAGES=$SRC/*.md

# Names of css and template files
TITLE="EMAT10006 - Further Computer Programming"
CSSFILE=style.css
TEMPLATE=$SRC/template.html

for mdfile in $PAGES; do
  pagename=$(basename "${mdfile%.*}")
  htmlfile=$OUT/$pagename.html

  echo Compiling $mdfile  to  $htmlfile  ...

  # Pandoc command:
  pandoc -s -t revealjs -o $htmlfile $mdfile

done
