import feedparser
from unidecode import unidecode
import sys
feedurl=sys.argv[1] # 'https://www.youtube.com/feeds/videos.xml?channel_id=UCShuVWEZ2KhSb2kAYd7-StQ'
file=sys.argv[2] #'output.lst'

feeddata = feedparser.parse(feedurl)

f = open(file,'w')
for entry in feeddata.entries:
	link = entry.link
	raw_title = entry.title
	title = raw_title.replace(' ','_').replace(':','')
	line = link+','+unidecode(title)+'\n'
	print line
	f.write(line)

f.close()

