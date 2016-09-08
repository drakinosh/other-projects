#!/usr/bin/python

import os, sys

try:
    pathname = sys.argv[1]
    folname = sys.argv[2]
except:
    print "usage: /path/rename.py folderpath foldername"
opdir = pathname + '/' + folname
j = 1
for root, dirs, files in os.walk(opdir):
    files.sort()
    for fname in files:
        if '.jpg' in fname:
            if j <= 9:
                os.rename(opdir+'/'+fname, opdir+'/'+'00'+str(j)+'.jpg')
                j += 1
            elif j >= 10:
                os.rename(opdir+'/'+fname, opdir+'/'+'0'+str(j)+'.jpg')
                j += 1
                
        
        
        
    
            
            
            
            

                
                
    
