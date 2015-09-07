#!/bin/sh

for item in $( env ); do
case $item in
ACTION=online)
	echo "aaaaaaa"> /log.txt
	amixer cset numid=35  1
	amixer cset numid=42  1
        amixer cset numid=41  0 
        amixer cset numid=34  0 	
        ;;
ACTION=offline)
	echo "bbbbbbbb"> /log.txt
	amixer cset numid=35  0 
	amixer cset numid=42  0 
        amixer cset numid=41  1  
        amixer cset numid=34  1 	
        ;;
*)
        ;;
esac

done

