alias lh='ls --color=auto -lhart'
alias gergpaste='xclip -selection c -o'
alias gergcopy='xclip -selection c'
#alias bat='bat -p'
alias xo="xdg-open"
alias ffnt='firefox --new-tab'
alias tmux='TERM=screen-256color tmux'
alias gergocr='ocrmypdf -l fra+nld+eng --jobs 4'
alias gergunpaper='ocrmypdf -l fra+nld+eng --jobs 4 --clean-final --unpaper-args="--blackfilter-scan-direction v,h --blackfilter-scan-size 20,20 --blackfilter-scan-depth 500,500 --blackfilter-scan-step 5,5 --blackfilter-scan-threshold 0.95 --blackfilter-intensity 20 --noisefilter-intensity 4 --blurfilter-size 100,100 --blurfilter-step 50,50 --blurfilter-intensity 0.01 --grayfilter-size 50,50 --grayfilter-step 20,20 --grayfilter-threshold  0.5"'
alias ioanyoutube='youtube-dl -f "bestvideo[ext=mp4]+best[filesize<400M]" --dateafter now-2weeks --playlist-end 10 --match-filter "duration > 180 & duration < 3700" --max-downloads 5 -o "%(title)s.%(ext)s"'
