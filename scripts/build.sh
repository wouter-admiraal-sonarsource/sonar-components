#!/usr/bin/env bash

for filename in src/*.scss; do
  BASENAME=$(basename $filename ".scss")
  npx node-sass --include-path=node_modules/ --output-style=expanded $filename $BASENAME.scss
  npx node-sass --include-path=node_modules/ --output-style=compressed $filename css/$BASENAME.css
done
