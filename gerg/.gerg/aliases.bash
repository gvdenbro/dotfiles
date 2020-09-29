alias lh='ls --color=auto -lhart'
alias gergpaste='xclip -selection c -o'
alias gergcopy='xclip -selection c'
#alias bat='bat -p'
alias xo="xdg-open"
alias ffnt='firefox --new-tab'
alias tmux='TERM=screen-256color tmux'
alias gergocr='ocrmypdf -l fra+nld+eng --deskew --jobs 4'
alias pandoc='podman run --rm -v `pwd`:/pandoc docker://docker.io/dalibo/pandocker'
alias gergR="echo 'go to http://localhost:8787 user: rtsudio pwd: rstudiopwd' && docker run --rm -p 8787:8787 -v $(pwd):/home/rstudio -e PASSWORD=rstudiopwd rocker/tidyverse"
alias gergpreview="fzf --preview-window=right:75%  --preview 'bat --style=numbers --color=always --line-range :500 {}'"
