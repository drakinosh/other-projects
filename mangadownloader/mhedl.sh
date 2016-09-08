#!/bin/bash

#arguments mhedl.sh manganame foldername volumenum  chapternum start end

mkdir ./$2
cd ./$2

mkdir ./$4
cd ./$4

for ((i=$5; i <= $6; i++))
do  wget -U "Mozilla" -A jpg -H -e robots=off http://www.mangahere.co/manga/$1/v$3/c$4/$i.html
python /home/sanskar/mangadownloader/rip.py /$HOME/mangadownloader/$2/$4/$i.html $i /home/sanskar/mangadownloader/$2/$4/
rm ./$i.html
done






