# Computer Setup
https://sourabhbajaj.com/mac-setup/Python/

## Mac Settings

## Installing Main 
Homebrew install
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install OH MY ZSH
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Setup zsh plugins
?????

Install other homebrew stuff
```
brew install \
    tree \
    git \
    vim \
    postgres \
    python \
    pyenv \
    node \
    yarn \
    docker 
```

## Python Setup

```
pip install --upgrade setuptools
pip install --upgrade pip
pip install virtualenvwrapper
```

```
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
exec $SHELL
```

## Git Configuration
```
git config --global user.name "Pat Falconer"
git config --global user.email "patrick.j.falconer@gmail.com"
git config --global credential.helper osxkeychain
```
create global gitignore
```
touch ~/.gitignore
```

add to file
```
# Folder view configuration files
.DS_Store
Desktop.ini

# Thumbnail cache files
._*
Thumbs.db

# Files that might appear on external disks
.Spotlight-V100
.Trashes

# Compiled Python files
*.pyc

# Compiled C++ files
*.out

# Application specific files
venv
node_modules
.sass-cache
```
then run 
```
git config --global core.excludesfile ~/.gitignore
```

## Installing Applications
Install all needed Applications With Homebrew Cask

```
brew install --cask \
    visual-studio-code \
    brave-browser \
    iterm2 \
    spectacle \
    spotify
```

## Set Brave as Default Browser
Apple menu > System Preferences > General
Click the “Default web browser” Set to Brave

## Brave Extensions Needed
Add BitWarden Password Manager

## Startup Spectacle at Login
Apple menu > System Preferences > Users & Groups > Login Items. Add Spectacle.
