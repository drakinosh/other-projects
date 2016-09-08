#import re, sys, urllib, os
import re, sys, urllibX, os
import shutil

# modified urllib (user-agent string change)

fi = open(sys.argv[1]).read()

matches = re.search('img src="([^"]+)"',fi).group()

a = matches[9:-1]

b = urllibX.urlretrieve(a)

try:
    os.rename(b[0], sys.argv[3] + sys.argv[2] + ".jpg")
except:
    shutil.move(b[0], sys.argv[3] + sys.argv[2] + ".jpg")

    
