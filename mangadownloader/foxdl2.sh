#!/bin/bash

#arguments foxdl.sh manganame foldername volumenum chapternum start end

mkdir ./$2
cd ./$2

mkdir ./$4
cd ./$4

for ((i=$5; i <= $6; i++))
do  wget -U "Mozilla/5.0 (X11; Linux x86_64; rv:28.0) Gecko/20100101 Firefox/28.0" -A jpg -H -e robots=off http://mangafox.me/manga/$1/v$3/c$4/$i.html
python2 /$HOME/mangadownloader/rip.py /$HOME/mangadownloader/$2/$4/$i.html $i /$HOME/mangadownloader/$2/$4/
rm ./$i.html
done






