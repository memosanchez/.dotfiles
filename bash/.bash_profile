# Load common files
## ~/.extras is used for machine-specific settings
for file in ~/.{bash_colors,bash_prompt,exports,aliases,extras}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Path

## Files in ~/.path will be added to your path
[[ -r "$HOME/.path" ]] && source "$HOME/.path"

## Make sure we have /usr/local/bin
PATH="/usr/local/bin:$PATH"

## Add user bin directory to path
PATH="$HOME/bin:$PATH"

# Check window size after each command and update if necessary
shopt -s checkwinsize

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

