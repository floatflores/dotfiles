if status is-interactive
    # Commands to run in interactive sessions can go here
    # set fish_greeting "好久不见，想我了吗～"
    set fish_greeting "May all the beauty be blessed"
    starship init fish | source

    alias cl="clear"
    alias ls="ls --color"
    alias suspend="systemctl suspend"
    alias hibernate="systemctl hibernate"
    set -gx PATH /home/flor/.local/lib/idea-IC-251.26094.121/bin/ $PATH
    set -gx PATH /home/flor/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/ $PATH
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/flor/.anaconda/bin/conda
    eval /home/flor/.anaconda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/flor/.anaconda/etc/fish/conf.d/conda.fish"
        . "/home/flor/.anaconda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/flor/.anaconda/bin" $PATH
    end
end
# <<< conda initialize <<<

