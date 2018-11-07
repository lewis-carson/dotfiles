convert $1 -colors 1 -size 1280x800 ~/.temp/frame.jpg
convert $1 ~/.temp/og.jpg
convert -bordercolor "#ffffff" -border 33 ~/.temp/og.jpg -scale 30 ~/.temp/og2.jpg
convert -composite -gravity center ~/.temp/frame.jpg ~/.temp/og2.jpg ~/.temp/preborder.jpg

convert ~/.temp/preborder.jpg ~/.temp/end.jpg
feh --bg-fill ~/.temp/end.jpg
