#!/bin/bash
# Rebuild the Overleaf zips from the template sources.
# Run this after editing anything in english/ or korean/.
set -e
cd "$(dirname "$0")"
mkdir -p overleaf

for lang in english korean; do
  rm -f "overleaf/resume-template-$lang.zip"
  # zip from inside the folder so resume.tex sits at the zip root,
  # which is what lets Overleaf pick it as the main file
  (cd "$lang" && zip -rq "../overleaf/resume-template-$lang.zip" . -x "*.DS_Store")
  echo "built overleaf/resume-template-$lang.zip"
done
