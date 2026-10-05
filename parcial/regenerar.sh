#!/bin/sh
# Regenera el PDF del parcial tras editar parcial.html (p. ej. para poner tu nombre).
# Requiere graphviz (dot) y un Chromium/Chrome.
set -e
cd "$(dirname "$0")"
CHROME="${CHROME:-/opt/pw-browsers/chromium-1194/chrome-linux/chrome}"
dot -Tsvg n0.dot -o n0.svg
dot -Tsvg n1.dot -o n1.svg
"$CHROME" --headless --disable-gpu --no-sandbox --no-pdf-header-footer \
  --print-to-pdf=APELLIDO_NOMBRE_Parcial_ISO1-F1.pdf \
  "file://$(pwd)/parcial.html"
echo "PDF regenerado."
