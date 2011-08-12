echo "==========================Operation Started=========================="
echo "Preparing Installation of Dot-files"
echo "Entering home directory"
cd ~
echo "Cloning dot-files"
git clone git://github.com/bagwanpankaj/dot-files.git
echo "dot-files Cloned"
echo "Cloned, now symlinking"
echo "Backing up old bash_profile to bash_profile.bak"
mv ~/.bash_profile ~/bash_profile.bak
echo "symlinking bash_profile..."
ln -s ~/dot-files/bash_profile ~/.bash_profile
echo "Backing up old gemrc to gemrc.bak"
mv ~/.gemrc ~/gemrc.bak
echo "symlinking gemrc..."
ln -s ~/dot-files/gemrc ~/.gemrc

echo "Backing up old gitconfig to gitconfig.bak"
mv ~/.gitconfig ~/gitconfig.bak
echo "symlinking gitconfig..."
ln -s ~/dot-files/gitconfig ~/.gitconfig

echo "Backing up old gitignore to gitignore.bak"
mv ~/.gitignore ~/gitignore.bak
echo "symlinking gitignore..."
ln -s ~/dot-files/gitignore ~/.gitignore

echo "Backing up old irbrc to irbrc.bak"
mv ~/.irbrc ~/irbrc.bak
echo "symlinking irbrc..."
ln -s ~/dot-files/irbrc ~/.irbrc
echo "==========================Operation Ended=========================="
