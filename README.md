# screengif
Easy shortcut for creating a gif from a screen recording. 

Based on this Gist:
https://gist.github.com/dergachev/4627207

# Installation

brew install ffmpeg <br />
brew install --cask xquartz #dependency for gifsicle, only required for moutain-lion and above <br />
brew install gifsicle

Download and move `screengif.sh` to your `/usr/local/bin`

in `/usr/local/bin` run `chmod +x screengif.sh`

Add an alias: <br />
Bash - in your `~./bash_profile` file: `alias screengif='screengif.sh'` <br />
ZSH - in your `~.zshrc` file: `alias screengif='screengif.sh'`

# Usage
You simply pass in a movie file: `screengif cats.mov` and it will create a gif with the same name in the same directory.
