git clone https://github.com/Nike-Inc/gimme-aws-creds.git
git clone https://bitbucket.nike.com/scm/cicexp/browse.git
./bin/setup-proxy.sh
npm install --global yarn
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
brew install zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
brew install neovim
brew install vim
pip3 install cryptography
pip3 install awscli --user --upgrade
pip3 install --upgrade gimme-aws-creds
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"\nsudo installer -pkg AWSCLIV2.pkg -target /
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz\ntar xzf nvim-macos.tar.gz\n./nvim-osx64/bin/nvim
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl.sha256"
echo "$(<kubectl.sha256)  kubectl" | shasum -a 256 --check
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl\nsudo chown root: /usr/local/bin/kubectl

