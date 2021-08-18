# Install
- ```git clone```
- ```git submodules init```
- ```git submodules update```
- then stow the appropriate directories

# tmux configuration
- ```stow --target=$HOME tmux```
- launch tmux
- ```prefix + I``` => will install the appropriate plugins (copycat, etc.)

Put the following in ~/.zshrc to add paths in tmux pane titles
```
function set_win_title() {
	echo -ne "\033]0; $(print -rD "$PWD") \007"
}
precmd_functions+=(set_win_title)
```

# alacritty configuration
```stow --target=$HOME alacritty```

# starship configuration
```stow --target=$HOME starship```

# other
- works best with ```Nerd Font``` installed

# ideas
- tmux
    * set current path in pane title
    * truncate parts of path if too long
    * git info? in tmux status bar? as to not polute prompt visually and more performant prompt?
- prompt
    * current dir name
    * prompt character (with color - previous command failed or not) 

