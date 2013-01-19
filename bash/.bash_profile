# Colors
[[ -f "$HOME/.bash_colors" ]] && source "$HOME/.bash_colors"

# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Path
PATH="/usr/local/bin:$PATH"

# Check window size after each command and update if necessary
shopt -s checkwinsize