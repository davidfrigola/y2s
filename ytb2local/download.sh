docker run -i --rm -v "$(pwd):/src" davidfrigola/ytb2local:1.0 -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]'  -o /src/$2.mp4 \ $1
