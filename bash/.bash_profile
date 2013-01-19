# Colors
[[ -r "$HOME/.bash_colors" ]] && source "$HOME/.bash_colors"

# Prompt
[[ -r "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Exports
[[ -r "$HOME/.exports" ]] && source "$HOME/.exports"

# Aliases
[[ -r "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Path
## Files in ~/.path will be added to your path
[[ -r "$HOME/.path" ]] && source "$HOME/.path"
## Make sure we have /usr/local/bin
PATH="/usr/local/bin:$PATH"
## Add user bin directory to path
PATH="$HOME/bin:$PATH"

# Extras
## ~/.extras can be used for machine specific things 
## that don't need to be commited
[[ -r "$HOME/.extras" ]] && source "$HOME/.extras"

# Check window size after each command and update if necessary
shopt -s checkwinsize

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

