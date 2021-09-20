" to make gruvbox work i had to source the gruvbox 256 palette as well in
" .bashrc - not sure if it's a tmux only issue
let g:gruvbox_contrast_light = 'soft'
autocmd vimenter * ++nested colorscheme gruvbox
set background=light   " Setting light mode
filetype plugin on
syntax on
set number
setlocal foldmethod=syntax
set foldlevelstart=20
