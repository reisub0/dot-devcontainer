#!/usr/bin/env fish
if status is-interactive && not functions --query fisher
    set -q XDG_CONFIG_HOME
    or set XDG_CONFIG_HOME ~/.config
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
    # curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    # fish -c "fisher update"
end
# Set up Pyenv
if command -v pyenv 1>/dev/null 2>&1
    pyenv init - | source
end
# cd $HOME
