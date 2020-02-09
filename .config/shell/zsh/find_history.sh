function fh() {
   command=$(fc -ln 0|               # show history without line numbers
     tac |               # reverse the order
     awk '!x[$0]++'  |               # drop duplicates (https://unix.stackexchange.com/a/193331)
     fzf -e +s \
         --color=light \
         --height=20 \
         --inline-info \
         --border \
         --prompt="Search history "  # fuzzy find with exact match, no sorting and custom style
   )

   if [[ !  -z  $param  ]]; then
     BUFFER=$BUFFER
     zle redisplay     # redisplay the current command prompt line
   else
     # See http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
     # for more details on this
     BUFFER=$command   # replace the buffer of the command prompt with our command
     zle redisplay     # redisplay the current command prompt line
     zle accept-line   # accept the current line in buffer a.k.a "press enter"
   fi
 }

zle -N fh
bindkey '^R' fh

