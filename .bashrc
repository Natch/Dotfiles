# ------------------------------------------------------------------------
#  Gitの補完とbashプロンプト拡張を読み込む
# ------------------------------------------------------------------------
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh


# ------------------------------------------------------------------------
#  .git-prompt.sh Setting
# ------------------------------------------------------------------------

# 現在のブランチがupstreamより進んでいるとき">"を、遅れているとき"<"を、遅れてるけど独自の変更もあるとき"<>"を表示する
GIT_PS1_SHOWDIRTYSTATE=1

# addされてない新規ファイルがある(untracked)とき"%"を表示する
GIT_PS1_SHOWUPSTREAM=1

# stashになにか入っている(stashed)とき"$"を表示する
GIT_PS1_SHOWUNTRACKEDFILES=1

# addされてない変更(unstaged)があったとき"*"を表示する、addされているがcommitされていない変更(staged)があったとき"+"を表示する
GIT_PS1_SHOWSTASHSTATE=1


# ------------------------------------------------------------------------
#  Bash Prompt-Format Setting
# ------------------------------------------------------------------------
export PS1='\[\e[1;37m\]\u\[\e[m\]:\[\e[1;33m\]\w\[\e[1;31m\]$(__git_ps1)\[\e[m\] \$ '

# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $

# 1; -> Bold Font
# code 30 -> black
# code 31 -> red
# code 32 -> green
# code 33 -> yellow
# code 34 -> blue
# code 35 -> purple
# code 36 -> cyan
# code 37 -> white
# \[e[m\] -> reset next font color


# ------------------------------------------------------------------------
#  Alias Settings
# ------------------------------------------------------------------------
alias ls='ls -FG'
alias ll='ls -alFG'

# change ls -G command colors (Directory : blue[x:default] -> bold yellow[D])
if [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=Dxfxcxdxbxegedabagacad
fi
