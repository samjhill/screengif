if [ "$1" = "" ] ;
then
	echo "Please pass a QuickTime movie file."
else
	export fspec="$1"
	fname=`basename $fspec`
	fname="${fname%.*}"
	filedir=$(dirname "$1")
	ffmpeg -i "$1" -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $filedir/$fname.gif
fi
