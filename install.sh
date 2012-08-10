echo "==========================Operation Started=========================="
echo "Preparing Installation of Dot-files"
echo "Entering home directory"
cd ~
echo "Cloned, now symlinking"
echo "Backing up old bash_profile to bash_profile.bak"
mv ~/.bash_profile ~/bash_profile.bak
echo "symlinking bash_profile..."
ln -s ./bash_profile ~/.bash_profile
echo "Backing up old gemrc to gemrc.bak"
mv ~/.gemrc ~/gemrc.bak
echo "symlinking gemrc..."
ln -s ./gemrc ~/.gemrc

echo "Backing up old gitconfig to gitconfig.bak"
mv ~/.gitconfig ~/gitconfig.bak
echo "symlinking gitconfig..."
ln -s ./gitconfig ~/.gitconfig

echo "Backing up old gitignore to gitignore.bak"
mv ~/.gitignore ~/gitignore.bak
echo "symlinking gitignore..."
ln -s ./gitignore ~/.gitignore

echo "Backing up old irbrc to irbrc.bak"
mv ~/.irbrc ~/irbrc.bak
echo "symlinking irbrc..."
ln -s ./irbrc ~/.irbrc
echo "==========================Operation Ended=========================="
