import re, sys, urllib, os

fi = open(sys.argv[1]).read()

matches = re.search('img src="([^"]+)"',fi).group()

a = matches[9:-1]

b = urllib.urlretrieve(a)

os.rename(b[0], sys.argv[3] + sys.argv[2] + ".jpg")

