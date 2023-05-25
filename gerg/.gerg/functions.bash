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

gergryanairpdf() {
    OUTPUT_FILENAME=$(mktemp)
    convert -density 300 -crop '50%x50%+50%+0' -gravity northeast $1 $OUTPUT_FILENAME.png
    montage ${OUTPUT_FILENAME}*.png -tile 2x2 -geometry 2000 -page A4 ${1%.*}-cropped.pdf
}

gergrecordandtranscribe() {

    pulse_source="default"
    language="en"
    model="large"

    if [ -z "$1" ]; then
        echo "Usage: $0 [pulse_source] [language] [model]"
        echo ""
        echo "  Example:"
        echo "    $0 $pulse_source $language $model"
        echo ""
        echo "No pulse_source specified, using default: $pulse_source"
    else
        pulse_source="$1"
    fi

    if [ -n "$2" ]; then
        language="$2"
    fi

    if [ -n "$3" ]; then
        model="$3"
    fi

    # Create a unique temporary file name for the output file
    OUTPUT_FILENAME=$(mktemp)

    # Capture the pulseaudio source and stream it to the temporary wav file
    parec -d $pulse_source | \
        sox -t raw -r 44100 -e signed-integer -b 16 -c 2 - -r 16000 $OUTPUT_FILENAME.wav &

    # Capture the process ID of the previous command
    PID=$!

    # Wait for a Ctrl-C signal
    trap "kill $PID" INT

    # Wait for the background process to finish
    wait $PID

    # Execute a command on the output file
    $HOME/dev/whisper.cpp/main -l $language -m $HOME/dev/whisper.cpp/models/ggml-${model}.bin -f $OUTPUT_FILENAME.wav -osrt
    ffmpeg -i $OUTPUT_FILENAME.wav -i $OUTPUT_FILENAME.wav.srt -c:a libmp3lame -q:a 6 -map 0:a -map 1:s -c:v copy -f matroska $OUTPUT_FILENAME.mkv
}