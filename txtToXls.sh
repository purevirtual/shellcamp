#!/bin/sh
#Author: yangchao02
#Usage: ./txtToXls.sh file
if [ $# != 1 ]
then
    echo "Usage: $0 filename"
    exit
fi
dest=$1.xls
echo '<html><head> <meta http-equiv=Content-Type content="text/html; charset=utf-8"> <meta name=ProgId content=Excel.Sheet> <meta name=Generator content="Microsoft Excel 9"> </head> <body> <table border="1">'  > $dest
sed -e 's/ /<\/td><td>/g' -e 's/^/<tr><td>/' -e 's/$/<\/td><\/tr>/' $1 >> $dest
echo '</table></body></html>' >> $dest
echo "Done: dest filename $dest"
