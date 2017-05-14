#mencoder CONSTITUCIÓN_ESPAÑOLA_1978_T_III_cap_I_LAS_CAMARAS.mp4 -of rawaudio -oac mp3lame -ovc copy -o CONSTITUCIÓN_ESPAÑOLA_1978_T_III_cap_I_LAS_CAMARAS.mp3
FILES=./*.mp4
for f in $FILES
do
 echo "Processing $f file"
 COMMAND="mencoder $f -of rawaudio -oac mp3lame -ovc copy -o $f.mp3"
 echo "Transforming to $COMMAND"
 eval "$COMMAND"
done
