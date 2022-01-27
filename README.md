# screengif
Easy shortcut for creating a gif from a screen recording. I use it a lot for demonstrating UI work and attaching it to a Github PR.

Based on this Gist:
https://gist.github.com/dergachev/4627207

# Installation

brew install ffmpeg <br />
brew install --cask xquartz #dependency for gifsicle, only required for moutain-lion and above <br />
brew install gifsicle

Run `./install.sh`

Add an alias: <br />
Bash - in your `~./bash_profile` file: `alias screengif='screengif.sh'` <br />
ZSH - in your `~/.zshrc` file: `alias screengif='screengif.sh'`

# Usage
You simply pass in a movie file: `screengif cats.mov` and it will create a gif with the same name in the same directory.

# Run automatically when you save a new screen recording

brew install fswatch

Add an alias: <br />
Bash - in your `~./bash_profile` file: `./usr/local/bin/watch.sh /Users/sam.hill/Documents/screengif &` <br />
ZSH - in your `~/.zshrc` file: `./usr/local/bin/watch.sh /Users/sam.hill/Documents/screengif &`