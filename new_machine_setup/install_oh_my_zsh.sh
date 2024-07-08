# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# change theme
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"\nDEFAULT_USER="${USERNAME}"/g' ~/.zshrc
# for mac
sed -i '' -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"\nDEFAULT_USER="${USERNAME}"/g' ~/.zshrc
# change display path
sed -i "s/CURRENT_FG '%~'/CURRENT_FG '%2~'/g" ~/.oh-my-zsh/themes/agnoster.zsh-theme
# for mac
sed -i '' -e "s/CURRENT_FG '%~'/CURRENT_FG '%2~'/g" ~/.oh-my-zsh/themes/agnoster.zsh-theme

# re-init the conda
~/miniconda3/bin/conda init zsh