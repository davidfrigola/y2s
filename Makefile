default:
	echo "Use an option:"

download-list:
	cd scrapper && $(MAKE) list_id=$(list_id) output=$(output) download
	./download.sh scrapper/$(output)
