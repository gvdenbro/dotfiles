export EDITOR='vim'

gergmovresize() {
	ffmpeg -i $1 -c:v libx264 -preset veryslow -crf 28 -c:a copy -pix_fmt yuv420p ${1%.*}.mkv;
}

gergcheat() {
    curl cheat.sh/$1
}
