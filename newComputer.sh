# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

#download node/npm
brew install node

#install jshint and move config file to home directory
npm install -g jshint
rm ~/.jshintrc
mv ./.jshintrc ~/.jshintrc

#install git
brew install git

#move git aliases

#move global gitignore

#get git config setup
git config --global user.name "something"
git config --global user.email "something@something.com"
mv ./.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore

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
