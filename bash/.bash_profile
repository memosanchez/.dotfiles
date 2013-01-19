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
PATH="/usr/local/bin:$PATH"

# Extras
## ~/.extras can be used for machine specific things 
## that don't need to be commited
[[ -r "$HOME/.extras" ]] && source "$HOME/.extras"

# Check window size after each command and update if necessary
shopt -s checkwinsize
