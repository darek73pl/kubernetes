#!/bin/sh
function create_index_html() {
  cat > /target/index.html<<EOF
  <html>
  <body>
  <p align="center"><font size="7" style="font-size: 200pt">$INDEX_CONTENT</font></p>
  <p align="center"><font size="7" style="font-size: 20pt">Pod Name: $POD_NAME</font></p>
  <body style="background-color:$COLOR;">
  </body>
  </html>
EOF
}

echo "Creating webpage index.html"
create_index_html
echo "Creating webpage index.html - completed"