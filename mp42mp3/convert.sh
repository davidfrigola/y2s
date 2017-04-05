#docker run -it --rm -v "$(pwd):/src" davidfrigola/mp42mp3:1.0 -f "-i" /src/$1 /src/$2.mp3
COMMAND=" /src/$1 -of rawaudio -oac mp3lame -ovc copy -o /src/$2.mp3"
#COMMAND="/src/$1 -o /src/$2.mp3"
echo "Running mencoder $COMMAND"
docker run -it --rm -v "$(pwd):/src" davidfrigola/mp42mp3:1.0 -f  "$COMMAND"
