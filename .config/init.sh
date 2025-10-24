git clone -q --bare https://github.com/wilson-matthew/dotfiles.git $HOME/.dotfiles

function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

dotfiles checkout > /dev/null 2>&1
if [ $? = 0 ]; then
  echo "Checked out config."
  else
    echo "Backing up pre-existing dot files."
    mkdir -p .config-backup
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | grep '/' | xargs -I{} dirname {} | xargs -I{} mkdir -p .config-backup/{}
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
    echo "Dotfiles backed up to .config-backup."
    dotfiles checkout
    echo "Checked out config."
fi;
dotfiles config status.showUntrackedFiles no

echo "To push changes to Github change remote URL to use ssh."
