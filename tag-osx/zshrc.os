export LSCOLORS="GxFxCxDxBxEgEdAbAgAcAd"
export BROWSER="open"



[[ -f "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"

[[ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

[[ -f ${HOME}/.asdf/asdf.sh ]]               && source "${HOME}/.asdf/asdf.sh" || echo "Missing asdf (https://github.com/asdf-vm/asdf)"
[[ -f ${HOME}/.asdf/completions/asdf.bash ]] && source "${HOME}/.asdf/completions/asdf.bash"


alias away='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# Middleman
alias mms="middleman server"
alias mmb="middleman build"