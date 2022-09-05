export EDITOR='vim'

gergmovresize() {
	ffmpeg -i $1 -c:v libx264 -preset veryslow -crf 28 -c:a copy -pix_fmt yuv420p ${1%.*}.mkv;
}

gergcheat() {
    curl cheat.sh/$1
}

ioanpdfbook() {
    convert $1 -compress jpeg -gravity center -background white -resize 1240x1753 -extent 1240x1753 -units PixelsPerInch -density 150x150 $2.pdf
}
