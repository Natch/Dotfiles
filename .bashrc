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

# ターミナルのタブタイトルをカレントディレクトリで表示する
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# ターミナルへの標準出力後に改行を入れる
function add_line() {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
export PROMPT_COMMAND="add_line; ${PROMPT_COMMAND}"

# プロンプトの表示設定
export PS1='\[\e[3;38;5;14m\]\u\[\e[m\]:\[\e[1;33m\]\w\[\e[1;31m\]$(__git_ps1)\[\e[m\]\n\$ '

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
# 3; -> Italic Font
# code 30 -> black
# code 31 -> red
# code 32 -> green
# code 33 -> yellow
# code 34 -> blue
# code 35 -> purple
# code 36 -> cyan
# code 37 -> white
# code 38 -> 拡張文字色指定 5;x;??? (0-255の10進数指定)
# \[e[m\] -> reset next font color


# ------------------------------------------------------------------------
#  Alias Settings
# ------------------------------------------------------------------------
alias ls='ls -FG'
alias ll='ls -alFG'
alias be='bundle exec'
alias rs='bin/rails server'
alias rc='bin/rails console'
alias drs='docker-compose exec web bin/rails server'
alias drc='docker-compose exec web bin/rails console'
alias dc='docker-compose'
alias dcr='docker-compose restart'

# auto using colordiff
if [[ -x $(which colordiff) ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# change ls -G command colors (Directory : blue[x:default] -> bold yellow[D])
if [ "$(uname)" = 'Darwin' ]; then
  export LSCOLORS=Dxfxcxdxbxegedabagacad
fi

# ------------------------------------------------------------------------
#  HSTR configuration - add this to ~/.bashrc
#  (https://github.com/dvorka/hstr)
# ------------------------------------------------------------------------
alias hh=hstr                   # hh to be alias for hstr
export HSTR_CONFIG=hicolor      # get more colors
shopt -s histappend             # append new history items to .bash_history
export HISTCONTROL=ignorespace  # leading space hides commands from history
export HISTFILESIZE=10000       # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE} # increase history size (default is 500)

# ensure synchronization between Bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"

# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi

# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

# ------------------------------------------------------------------------
#  Terraform tab completion automatically
#  https://medium.com/@jyotti/terraform-completion-bc1acb6b881e
# ------------------------------------------------------------------------
if type terraform &>/dev/null; then
  complete -C terraform terraform
fi

# ------------------------------------------------------------------------
#  追加済みの Keychain からssh秘密鍵を読み込む
#  https://qiita.com/sonots/items/a6dec06f95fca4757d4a
# ------------------------------------------------------------------------
ssh-add -A
