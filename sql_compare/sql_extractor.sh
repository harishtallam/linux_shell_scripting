#! /bin/bash

> source.sql
for TABLE_DTLS in $(cat source_data.conf)
do
	
	echo $TABLE_DTLS > temp_db.conf
	echo "SELECT" >> source.sql
	awk -F "|" '{print $1}' temp_db.conf >> source.sql
	echo "FROM" >> source.sql
	awk -F "|" '{print $2}' temp_db.conf >> source.sql
	echo "ORDER BY" >> source.sql
	cat temp_db.conf | awk -F "|" '{print $2}' | awk -F "," '{print $1}' >> source.sql
	echo ";" >> source.sql
	echo "" >> source.sql
	
	
	#cat source.sql
done

 cat source.sql | tr '\n' ' ' | sed -e 's#;#;\n#g' | sed -e 's#  SELECT#SELECT#g' > source.sql
