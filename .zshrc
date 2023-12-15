export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dst"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-vi-mode
    z
)

# vi mode
bindkey -v
export KEYTIMEOUT=1
zvm_config() {
    ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BEAM
    ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
}

source $ZSH/oh-my-zsh.sh

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias tf=terraform
alias k=kubectl
alias v=nvim
alias vi=nvim
alias vim=nvim
alias v.="nvim ."

alias ls="exa --icons"
alias la="exa -a --icons"
alias tree="exa --tree --icons"

export VISUAL=nvim
export EDITOR="$VISUAL"
export MANPAGER='most'

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/Users/zpawe/.toolbox/bin
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function azfunclocal () {
    deactivate || :
    source /Users/zpawe/Rosetta/.venv/bin/activate
    echo $(which python3)
    arch -x86_64 /usr/local/bin/func start
}
alias funcstart=azfunclocal

[[ $commands[k] ]] && source <(kubectl completion zsh)

clear
# curl -fGsS $args --compressed "wttr.in/?0Q"
# curl wttr.in/Moon

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pawelzak/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pawelzak/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pawelzak/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pawelzak/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export GOOGLE_APPLICATION_CREDENTIALS=/Users/pawelzak/.config/gcloud/application_default_credentials.json
export DBT_DEFAULT_DATASET='dbt_test_schema'
export DBT_DEV_PROJECT_ID='dev-purple-lotus-warehouse'

# Created by `pipx` on 2023-08-08 20:22:52
export PATH="$PATH:/Users/pawelzak/.local/bin"
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"
