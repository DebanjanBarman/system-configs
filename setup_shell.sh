sudo dnf install zsh -y
sudo chsh -s $(which zsh)

# setup all the requirements

cd

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k


# install nerd fonts 

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/0xProto.zip
unzip 0xProto.zip -d ./0xProto
sudo cp -r 0xProto /usr/share/fonts
sudo fc-cache -fv

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaCode.zip
unzip CascadiaCode.zip -d ./CascadiaCode
sudo cp -r CascadiaCode /usr/share/fonts
sudo fc-cache -fv


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
