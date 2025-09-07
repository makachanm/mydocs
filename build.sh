#!/bin/bash

./cutter -i main.cm -w index.html

for cm_file in articles/*.cm; do
  html_file="${cm_file%.cm}.html"
  ./cutter -i "$cm_file" -w "$html_file"
done

echo "Build complete."