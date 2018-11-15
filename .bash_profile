if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# ------------------------------------------------------------------------
#  anyenv PATH Setting
# ------------------------------------------------------------------------
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
