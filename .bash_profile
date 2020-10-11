if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# ------------------------------------------------------------------------
#  anyenv PATH Setting, only if clone from repository directly.
#  https://github.com/anyenv/anyenv
# ------------------------------------------------------------------------
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# ------------------------------------------------------------------------
#  pocke/whichpr: Find the pull request from commit hash.
#  https://github.com/pocke/whichpr
# ------------------------------------------------------------------------
export PATH="$HOME/.whichpr/bin:$PATH"

# ------------------------------------------------------------------------
#  MySQL PATH Setting (not docker)
# ------------------------------------------------------------------------
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# ------------------------------------------------------------------------
#  PostgreSQL PATH Setting (not docker)
# ------------------------------------------------------------------------
export PATH="/usr/local/Cellar/postgresql/12.3_4/bin:$PATH"
