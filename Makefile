default:
	@echo "Use an option: help|single|list|single-audio|list-audio"

help:
	@echo "HELP"
	@echo "single"
	@echo "Provide url and title for the youtube video"
	@echo "Sample : make single url=http://www.youtube.com/abcd title=myvideo single"
	@echo "list"
	@echo "Provide list_id of the youtube playlist and output folder"
	@echo "Sample : make list list_id=12345 output=./my_videos_12345"
	@echo "single-audio"
	@echo "Provide the file and the final name"
	@echo "Sample : make single-audio file=file.mp4 name=file.mp3"
	@echo "list-audio"
	@echo "make list-audio"
	@echo "This will transform all mp4 files in current folder into mp3 with default encoding params,using the sh script"
single:
	./ytb2local/download.sh $(url) $(title)
list:
	cd scrapper && $(MAKE) list_id=$(list_id) output=$(output) download
	./download.sh scrapper/$(output)

single-audio:
	mencoder ${file} -of rawaudio -oac mp3lame -ovc copy -o ${name}

list-audio:
	./mp42mp3.sh

.PHONY: help single list single-audio list-audio

