# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)


source $ZSH/oh-my-zsh.sh

# Alias
alias cat='batcat'
alias c='xsel --clipboard --input'
alias ll='ls -alF' # 詳細表示のためのエイリアス
alias grep='grep --color=auto' # grepの出力に色をつける
alias k='kubectl'

# fzf key bindings and fuzzy auto-completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# history
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ

# share .zshhistory
setopt inc_append_history   # 実行時に履歴をファイルにに追加していく
setopt share_history        # 履歴を他のシェルとリアルタイム共有する

# パフォーマンスの最適化
setopt prompt_subst
setopt autocd  # ディレクトリ名のみで移動可能にする
setopt no_beep # ビープ音を無効化

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


