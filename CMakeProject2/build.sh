gcc -I/usr/include/libxml2 -Wdiscarded-qualifiers -g client/* utils/* -lcypher-parser -lxml2 -lm -o client_main
gcc -I/usr/include/libxml2 -Wdiscarded-qualifiers -pthread -g server/* datafile/* utils/* -lxml2 -lm -o server_main