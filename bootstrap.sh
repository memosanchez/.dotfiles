# Initialize
current_pwd=$(pwd)

# Update the git repo
# Assumes ~/.dotfiles is intended for this 
if [ -d $HOME/.dotfiles ]; then
  echo "Pulling latest .dotfiles"
  cd $HOME/.dotfiles
  git pull origin master
fi

# Bash
rsync -av bash/ $HOME

# Git
rsync -av git/ $HOME

# Hg
rsync -av hg/ $HOME

# Finished
cd $current_pwd
exec $SHELL
source ~/.bash_profile
echo "Finished."

