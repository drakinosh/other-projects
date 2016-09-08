#!/bin/bash

#arguments mhedl_alt.sh manganame foldername  chapternum start end

mkdir ./$2
cd ./$2

mkdir ./$3
cd ./$3

for ((i=$4; i <= $5; i++))
do  wget -U "Mozilla" -A jpg -H -e robots=off http://www.mangahere.co/manga/$1/c$3/$i.html
python2 $HOME/mangadownloader/rip.py /$HOME/mangadownloader/$2/$3/$i.html $i $HOME/mangadownloader/$2/$3/
rm ./$i.html
done






