if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# ------------------------------------------------------------------------
#  anyenv PATH Setting
# ------------------------------------------------------------------------
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# ------------------------------------------------------------------------
#  pocke/whichpr: Find the pull request from commit hash.
#  https://github.com/pocke/whichpr
# ------------------------------------------------------------------------
export PATH="$HOME/.whichpr/bin:$PATH"

