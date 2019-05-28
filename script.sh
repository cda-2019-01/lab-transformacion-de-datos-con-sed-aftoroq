# Escriba su código aquí
sed -e 's|\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)|20\3-\2-\1|' data.csv > data_2.csv
sed -e 's|\([0-9]\)/\([0-9]\)/\([0-9][0-9][0-9][0-9]\)|\3-0\2-0\1|' data_2.csv > data_3.csv
sed 's/;n/;\\n/g;s/;;/;\\n;/g;s/;N/;\\N/g' data_3.csv > data_4.csv
sed -E 's/([[:lower:]])/\U\1/g' data_4.csv > data_5.csv
sed 's/;[[:space:]]/; /g' < data_5.csv | sed 's/; /;\\N/g' > data_6.csv
sed 's/,/./g' < data_6.csv | sed 's/;/,/g'  > solucion.csv
rm data_*
cat solucion.csv