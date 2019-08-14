echo
echo "Installing Ruby tools and latest Ruby"
cp files/.irbrc ~/.irbrc
brew install readline
eval "$(rbenv init -)"
rbenv install $(rbenv install -l | grep -v - | tail -1) --skip-existing
rbenv global $(rbenv install -l | grep -v - | tail -1)
gem install bundler
rbenv rehash

# guard against pre-installed rubymine
brew cask install rubymine --force
