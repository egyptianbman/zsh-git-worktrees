fpath+="${0:A:h}/functions"

autoload -Uz gwt
autoload -Uz __gwt_mv
autoload -Uz __gwt_switch
autoload -Uz __gwt_symlink

fpath+="${0:A:h}/completion"
autoload -U compinit; compinit
