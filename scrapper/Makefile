default:
	echo "Available options : download"
	echo "Usage : make list_id=<list_id> output=<output> download"

download:
	python yscrapper.py https://www.youtube.com/feeds/videos.xml?playlist_id=$(list_id) $(output)

