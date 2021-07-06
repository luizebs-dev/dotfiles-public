#/bin/bash
# install DroidSansMono Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
# Please consult 
# https://askubuntu.com/questions/3697/how-do-i-install-fonts?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
# https://gist.github.com/matthewjberger/7dd7e079f282f8138a9dc3b045ebefa0
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
unzip DroidSansMono.zip -d ~/.local/share/fonts
fc-cache -fv
echo "done!"
