#!/bin/sh

function create_time_html() {
  while true; do
    cat > /target/time.html<<EOF
    <html>
    <body>
    <p align="center"><font size="7" style="font-size: 200pt">$(date +%H:%M:%S)</font></p>
    <p align="center"><font size="7" style="font-size: 20pt">Pod Name: $POD_NAME</font></p>
    <body style="background-color:$COLOR;">
    </body>
    </html>
EOF

    sleep 1
    echo "time updated ..."
  done
}

echo "Creating webpage time.html"
create_time_html 
echo "Creating webpage time.html - completed"