# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

#download node/npm
brew install node

#install jshint and move config file to home directory
npm install -g jshint
rm ~/.jshintrc
mv ./.jshintrc ~/.jshintrc

#install other packages globally
npm install -g nodemon
npm install -g n


#install git
brew install git

#move git aliases

#get git config setup
echo "Git Global Username?"
read username
git config --global user.name "$username"
echo "Git Global Email?"
read email
git config --global user.email "$email"
mv ./.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
curl -o ./git-credential-osxkeychain https://confluence.atlassian.com/bitbucketserver/files/776639846/776639847/1/1335483205454/git-credential-osxkeychain
chmod a+x git-credential-osxkeychain
mv ./git-credential-osxkeychain /usr/local/bin/git-credential-osxkeychain
git config --global credential.helper osxkeychain

#install oh my zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

#move .zshrc file
rm ~/.zshrc
mv ./.zshrc ~/.zshrc

echo "DONE!"