#!/usr/bin/env bash
# Wrap site.html (the editable source, also used for the claude.ai preview) into a
# standalone public/index.html for static hosting, e.g. GitLab Pages.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p public
python3 - <<'PY'
src = open("site.html").read()
head, body = src.split("</style>", 1)
out = ('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
       '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
       + head + "</style>\n</head>\n<body>\n" + body.lstrip() + "</body>\n</html>\n")
open("public/index.html", "w").write(out)
PY
rm -rf public/headshots && cp -R headshots public/headshots
echo "wrote public/index.html and public/headshots/"
