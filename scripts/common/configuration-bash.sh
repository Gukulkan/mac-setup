echo
echo "Configuring bash with bash-it"
brew install autojump
brew install grc
brew install coreutils
brew install rbenv
brew install watch
cp files/dircolors.ansi-dark ~/.dircolors
cp files/.inputrc ~/.inputrc
rm -rf ~/.bash_it
export BASH_IT="$HOME/.bash_it"
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
cp files/add_user_initials_to_git_prompt_info.bash ~/.bash_it/custom
cp files/bobby_changes/bobby_changes.theme.bash ~/.bash_it/themes/bobby/bobby.theme.bash
cp files/cf_cli.completion.bash ~/.bash_it/completion/available
~/.bash_it/install.sh --silent
source ~/.bash_profile
source ~/.bash_it/bash_it.sh
bash-it enable completion git
bash-it enable plugin autojump
bash-it enable plugin ssh
bash-it enable plugin rbenv
bash-it enable completion ssh
bash-it enable completion cf_cli

echo
echo "Configuring direnv with bash-it"
brew install direnv
cp files/direnv.bash ~/.bash_it/custom/direnv.bash
