#!/bin/bash

#arguments mnrdl.sh manganame foldername chapternum start end
mkdir ./$2
cd ./$2
mkdir ./$3
cd ./$3

for ((i=$4; i<=$5; i++))
do
    wget -r -l 1 -A jpg -e robots=off -nd -H --exclude-domains memecenter.com,animepremium.net,watchop.com,watchpop.com,upload2.com,goodanime.net,watchpop.com,gogoanime.com,animefreak.tv,watchcartoons.com,watchepisode.tv,animemobile.com  http://www.mangareader.net/$1/$3/$i 
done

python /$HOME/mangadownloader/rename.py /$HOME/mangadownloader/$2 $3
