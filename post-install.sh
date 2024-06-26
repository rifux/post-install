#!/usr/bin/sh

#-----------------------------------------#
#   Powered by Vladimir `rifux` Blinkov   #
#  https://github.com/rifux/post-install  #
#                                         #
#           Licensed under MIT            #
#-----------------------------------------#

start_time=$(date +%s)
usr=$(whoami)
clear
sleep_time=2

mkdir P_O_S_T--I_N_S_T_A_L_L
cd P_O_S_T--I_N_S_T_A_L_L
echo -e "$(pwd)"
term="gnome-terminal --"

app_picker()
{
	dconf load /org/gnome/desktop/app-folders/ <<EOF
[/]
folder-children=['Utilities', 'YaST', 'Pardus', 'eConfig', 'SysConfig', 'Games', 'Chatting', 'DevToolbox', 'LOffice', 'BoardGames', 'WebBrowsers', 'DiskUtilities', 'SysObserving', 'GNOMEApps', 'Productivity', 'Unused', 'CLIApps', 'MediaEditing', 'TextWorks', 'DLs', 'utils']

[folders/MediaEditing]
apps=['io.github.jliljebl.Flowblade.desktop', 'gimp.desktop', 'org.upscayl.Upscayl.desktop', 'net.fasterland.converseen.desktop', 'pinta.desktop', 'org.bunkus.mkvtoolnix-gui.desktop']
name='Media Editing'
translate=false

[folders/BoardGames]
apps=['org.gnome.Chess.desktop', 'org.gnome.Mahjongg.desktop', 'org.gnome.SwellFoop.desktop', 'org.gnome.Sudoku.desktop', 'org.gnome.Reversi.desktop', 'org.gnome.Quadrapassel.desktop', 'org.gnome.Mines.desktop', 'org.gnome.LightsOff.desktop']
name='Board Games'
translate=false

[folders/DiskUtilities]
apps=['org.gnome.DiskUtility.desktop', 'org.gnome.baobab.desktop', 'org.bleachbit.BleachBit.desktop', 'org.bleachbit.BleachBit-root.desktop']
name='Disk Utilities'
translate=false

[folders/CLIApps]
apps=['helix.desktop', 'nvim.desktop', 'lvim.desktop']
name='CLI Apps'
translate=false

[folders/Productivity]
apps=['io.github.alainm23.planify.desktop', 'io.gitlab.idevecore.Pomodoro.desktop', 'com.github.flxzt.rnote.desktop', 'com.beavernotes.beavernotes.desktop', 'io.github.wazzaps.Fingerpaint.desktop']
name='Productivity'
translate=false

[folders/utils]
apps=['nemo.desktop', 'org.gnome.Evince.desktop', 'org.gnome.FileRoller.desktop', 'org.gnome.Shotwell.desktop', 'mpv.desktop', 'org.gnome.Music.desktop']
name='Utilities'
translate=false

[folders/Unused]
apps=['org.gnome.Console.desktop', 'fish.desktop', 'org.opensuse.opensuse_welcome.desktop', 'xscreensaver.desktop', 'xterm.desktop', 'xscreensaver-settings.desktop']
name='Other (Unused)'
translate=false

[folders/LOffice]
apps=['libreoffice-startcenter.desktop', 'libreoffice-writer.desktop', 'libreoffice-impress.desktop', 'libreoffice-calc.desktop', 'libreoffice-base.desktop', 'libreoffice-draw.desktop', 'libreoffice-math.desktop']
name='LibreOffice'
translate=false

[folders/GNOMEApps]
apps=['org.gnome.Contacts.desktop', 'org.gnome.Weather.desktop', 'org.gnome.clocks.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Photos.desktop', 'org.gnome.Totem.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.eog.desktop', 'yelp.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Cheese.desktop', 'org.gnome.TextEditor.desktop']
name='GNOME Apps'
translate=false

[folders/TextWorks]
apps=['com.github.tenderowl.frog.desktop', 'io.crow_translate.CrowTranslate.desktop', 'org.gnome.Characters.desktop']
name='OCR, Translate, Text'
translate=false

[folders/WebBrowsers]
apps=['librewolf.desktop', 'io.github.ungoogled_software.ungoogled_chromium.desktop', 'org.gnome.Epiphany.desktop', 'torbrowser.desktop', 'org.kde.angelfish.desktop', 'torbrowser-settings.desktop']
name='Web Browsers'
translate=false

[folders/Chatting]
apps=['im.nheko.Nheko.desktop', 'im.fluffychat.Fluffychat.desktop', 'chat.revolt.RevoltDesktop.desktop', 'io.github.milkshiift.GoofCord.desktop', 'org.gnome.Polari.desktop']
name='Chatting'
translate=false

[folders/DLs]
apps=['com.github.unrud.VideoDownloader.desktop', 'net.agalwood.Motrix.desktop', 'org.qbittorrent.qBittorrent.desktop']
name='Downloaders'
translate=false

[folders/SysConfig]
apps=['org.gnome.Settings.desktop', 'org.gnome.Extensions.desktop', 'ca.desrt.dconf-editor.desktop', 'org.gnome.tweaks.desktop', 'com.github.wwmm.easyeffects.desktop', 'org.gnome.seahorse.Application.desktop', 'com.github.tchx84.Flatseal.desktop', 'system-config-printer.desktop', 'enlightenment_fprint.desktop', 'vinagre.desktop', 'gpk-prefs.desktop', 'org.gnome.PackageUpdater.desktop']
name='Sys. Configuration'
translate=false

[folders/eConfig]
apps=['elementary_config.desktop', 'elementary_perf.desktop', 'enlightenment_paledit.desktop']
name="'e' Configuration"
translate=false

[folders/Pardus]
categories=['X-Pardus-Apps']
name='X-Pardus-Apps.directory'
translate=true

[folders/Utilities]
apps=['gnome-abrt.desktop', 'gnome-system-log.desktop', 'nm-connection-editor.desktop', 'org.gnome.Connections.desktop', 'org.gnome.DejaDup.desktop', 'org.gnome.Dictionary.desktop', 'org.gnome.FileRoller.desktop', 'org.gnome.fonts.desktop', 'org.gnome.Loupe.desktop', 'org.gnome.Usage.desktop']
categories=['X-GNOME-Utilities']
excluded-apps=['org.gnome.tweaks.desktop', 'org.gnome.DiskUtility.desktop', 'xterm.desktop', 'vinagre.desktop', 'org.gnome.Console.desktop', 'org.gnome.Characters.desktop', 'org.gnome.seahorse.Application.desktop', 'org.gnome.Evince.desktop', 'org.gnome.baobab.desktop', 'org.gnome.FileRoller.desktop']
name='X-GNOME-Utilities.directory'
translate=true

[folders/YaST]
categories=['X-SuSE-YaST']
name='suse-yast.directory'
translate=true

[folders/DevToolbox]
apps=['io.github.fizzyizzy05.binary.desktop', 'org.gaphor.Gaphor.desktop', 'net.werwolv.ImHex.desktop', 'io.github.nokse22.asciidraw.desktop', 'org.gnome.Meld.desktop', 'fyi.zoey.Boop-GTK.desktop', 'io.github.nokse22.minitext.desktop', 'com.mardojai.ForgeSparks.desktop', 'com.jetpackduba.Gitnuro.desktop']
name='Dev. Toolbox'
translate=false

[folders/SysObserving]
apps=['org.gnome.SystemMonitor.desktop', 'org.gnome.PowerStats.desktop', 'btop.desktop', 'org.gnome.Logs.desktop', 'bmon.desktop']
name='Sys. Observing'
translate=false

[folders/Games]
apps=['page.kramo.Cartridges.desktop', 'org.ryujinx.Ryujinx.desktop', 'org.godotengine.Godot.desktop']
name='Games'

EOF
	gsettings set org.gnome.shell favorite-apps "[]"
	gsettings set org.gnome.shell app-picker-layout "[{'org.ferdium.Ferdium.desktop': <{'position': <0>}>, 'Chatting': <{'position': <1>}>, 'com.github.neithern.g4music.desktop': <{'position': <2>}>, 'MediaEditing': <{'position': <3>}>, 'org.gnome.Software.desktop': <{'position': <4>}>, 'DLs': <{'position': <5>}>, 'org.localsend.localsend_app.desktop': <{'position': <6>}>, 'WebBrowsers': <{'position': <7>}>, 'simple-scan.desktop': <{'position': <8>}>, 'TextWorks': <{'position': <9>}>, 'io.github.amit9838.mousam.desktop': <{'position': <10>}>, 'utils': <{'position': <11>}>, 'org.gnome.Calculator.desktop': <{'position': <12>}>, 'GNOMEApps': <{'position': <13>}>}, {'org.onlyoffice.desktopeditors.desktop': <{'position': <0>}>, 'LOffice': <{'position': <1>}>, 'thunderbird.desktop': <{'position': <2>}>, 'Productivity': <{'position': <3>}>, 'codium.desktop': <{'position': <4>}>, 'DevToolbox': <{'position': <5>}>, 'terminology.desktop': <{'position': <6>}>, 'CLIApps': <{'position': <7>}>}, {'info.febvre.Komikku.desktop': <{'position': <0>}>, 'io.freetubeapp.FreeTube.desktop': <{'position': <1>}>, 'Games': <{'position': <2>}>, 'BoardGames': <{'position': <3>}>}, {'org.gnome.Boxes.desktop': <{'position': <0>}>, 'virtualbox.desktop': <{'position': <1>}>, 'SysConfig': <{'position': <2>}>, 'SysObserving': <{'position': <3>}>, 'DiskUtilities': <{'position': <4>}>, 'org.opensuse.YaST.desktop': <{'position': <5>}>, 'YaST': <{'position': <6>}>, 'eConfig': <{'position': <7>}>, 'org.keepassxc.KeePassXC.desktop': <{'position': <8>}>, 'Unused': <{'position': <9>}>}]"
}

print()
{
	echo -e "\n\n\n[ $1.. ]"
	sleep $sleep_time
}

fetch()
{
	wget --quiet --progress=bar --show-progress --tries=inf --waitretry=5 $1
}

git_sparse_clone() {
	pwd_dir=$(pwd)
	git_repo_url="$1"
	shift 1
	git clone --filter=blob:none --sparse $git_repo_url
	cd ${git_repo_url##*/}
	git sparse-checkout add $@
	git checkout
	cd $pwd_dir
}



print "Creating symlink 'zy' to 'zypper'"
sudo ln -s /usr/bin/zypper /usr/bin/zy


print "Removing PackageKit aka 'kill my system instead of update'"
sudo zy rm -u PackageKit


print "Disabling recommended packages and openSUSE branding in 'zypp' conf"
sudo sed --quiet 's/# solver.onlyRequires = false/solver.onlyRequires = true/' /etc/zypp/zypp.conf


print "Installing Vanilla Theming for installed software."
sudo zy in \
	branding-upstream libreoffice-branding-upstream NetworkManager-branding-upstream \
	gdm-branding-upstream gio-branding-upstream gnome-menus-branding-upstream \
	gtk2-branding-upstream gtk3-branding-upstream gtk4-branding-upstream



print "Installing necessary software: work stuff, code editors, terminal, file manager, dev tools, etc."
sudo zy in --no-confirm --auto-agree-with-licenses	\
	neovim micro-editor helix \
	\
	fish eza bat fd nnn btop progress bmon ncdu NetworkManager-tui fzf tealdeer zoxide \
	\
	terminology terminology-theme-upstream enlightenment enlightenment-branding-upstream \
	\
	mpv \
	\
	mkvtoolnix-gui \
	\
	qbittorrent \
	\
	nemo nemo-extension-audio-tab nemo-extension-compare \
	nemo-extension-image-converter nemo-extension-preview \
	\
	golang gopls git \
	\
	gnome-power-manager power-profiles-daemon \
	\
	opi \
	\
	docker \
	\
	pinta shotwell \
	\
	jetbrains-mono-fonts fetchmsttfonts \
	\
	keepassxc \
	\
	MozillaThunderbird \
	\
	bleachbit \
	\
	gnome-boxes virtualbox \
 	\
  	torbrowser-launcher angelfish \
   	\
    	godot


print "Downloading usable Nerd Fonts"
git_sparse_clone https://github.com/ryanoasis/nerd-fonts \
	"patched-fonts/NerdFontsSymbolsOnly" \
 	"patched-fonts/Overpass" \
	"patched-fonts/JetBrainsMono" \
	"patched-fonts/Mononoki" \
	"patched-fonts/FiraCode" \
	"patched-fonts/IBMPlexMono" \
	"patched-fonts/Ubuntu" \
	"patched-fonts/UbuntuSans" \
	"patched-fonts/UbuntuMono" \
	"patched-fonts/Monoid"


print "Installing fonts"
find nerd-fonts -type f -name "*.ttf" -exec mv {} . \;
rm -rf nerd-fonts
sudo mv -v *.ttf /usr/share/fonts


print "Removing fish configs"
rm -rv /home/$usr/.config/fish


print "Enabling Docker service"
sudo systemctl enable --now docker


print "Adding $usr to Docker"
sudo usermod $usr -aG docker


print "Enabling Power Profiles Daemon service"
sudo systemctl enable --now power-profiles-daemon


print "Enabling 'zoxide'"
fish -c "zoxide init fish >> /home/$usr/.config/fish/zoxide.fish"


print "Installing aliases to fish shell"
fetch https://raw.githubusercontent.com/rifux/dots/main/fish/aliases.fish
mkdir -pv /home/$usr/.config/fish
mv -v aliases.fish /home/$usr/.config/fish
cat >/home/$usr/.config/fish/config.fish <<EOL
set -q CONFIG_FISH_HOME || set CONFIG_FISH_HOME "\$HOME/.config/fish"

source \$CONFIG_FISH_HOME/aliases.fish
source \$CONFIG_FISH_HOME/zoxide.fish
EOL


print "Installing Flatpak apps"
cat >./install_flatpak_apps.sh <<EOL
#!/usr/bin/sh
rm ./install_flatpak_apps.sh
print()
{
	echo -e "\\n\\n\\n[ \$1.. ]"
	sleep $sleep_time
}

flatinstall()
{
	sudo flatpak install --system --assumeyes \$1
}

print "Installing LocalSend"
flatinstall org.localsend.localsend_app


print "Installing Media apps"
# flatinstall com.github.geigi.cozy
flatinstall io.freetubeapp.FreeTube
# flatinstall io.gitlab.zehkira.Monophony
flatinstall com.github.neithern.g4music
# flatinstall io.bassi.Amberol
flatinstall com.github.unrud.VideoDownloader
flatinstall net.fasterland.converseen
flatinstall info.febvre.Komikku
flatinstall net.agalwood.Motrix
flatinstall io.github.jliljebl.Flowblade
flatinstall com.github.wwmm.easyeffects


print "Installing Upscayl"
flatinstall org.upscayl.Upscayl


print "Installing Chatting software"
flatinstall io.github.NhekoReborn.Nheko
flatinstall im.fluffychat.Fluffychat
flatinstall org.ferdium.Ferdium
flatinstall chat.revolt.RevoltDesktop
flatinstall io.github.milkshiift.GoofCord


print "Installing Productivity software: coding"
flatinstall com.jetpackduba.Gitnuro
flatinstall com.mardojai.ForgeSparks
flatinstall io.github.nokse22.asciidraw
flatinstall fyi.zoey.Boop-GTK
flatinstall io.github.fizzyizzy05.binary
flatinstall net.werwolv.ImHex
flatinstall org.gaphor.Gaphor
flatinstall io.github.ungoogled_software.ungoogled_chromium


print "Installing Productivity software: general"
flatinstall org.onlyoffice.desktopeditors
flatinstall io.gitlab.idevecore.Pomodoro
flatinstall io.github.alainm23.planify
flatinstall com.github.flxzt.rnote
flatinstall com.github.tenderowl.frog
flatinstall com.beavernotes.beavernotes
# flatinstall com.toolstack.Folio
# flatinstall io.github.mrvladus.List
# flatinstall io.github.diegoivanme.flowtime
flatinstall io.crow_translate.CrowTranslate
flatinstall io.github.nokse22.minitext
flatinstall io.github.wazzaps.Fingerpaint
flatinstall io.github.amit9838.mousam


print "Installing customization software"
# flatinstall page.codeberg.libre_menu_editor.LibreMenuEditor
flatinstall com.github.tchx84.Flatseal


print "Installing gaming software"
flatinstall page.kramo.Cartridges
flatinstall org.ryujinx.Ryujinx

echo -e "[ THE SCRIPT IS DONE. EXITING IN 5sec. ]"
sleep 5
EOL


chmod +x install_flatpak_apps.sh


nohup $term "./install_flatpak_apps.sh" >> /dev/null 2>&1 &



print "Installing Media Codecs and VSCodium"
opi codecs 
opi -n vscodium 


cat >./install_vscodium_extensions.sh <<EOL
#!/usr/bin/sh
rm ./install_vscodium_extensions.sh
echo -e "[ Installing VSCodium extensions: General coding, Golang, C++.. ]"
sleep 3


codium --install-extension golang.Go
codium --install-extension r3inbowari.gomodexplorer
codium --install-extension furkanozalp.go-syntax
codium --install-extension neonxp.gotools
codium --install-extension EdwinKofler.vscode-assorted-languages 
codium --install-extension jeff-hykin.better-cpp-syntax
codium --install-extension alefragnani.Bookmarks
codium --install-extension danielpinto8zz6.c-cpp-project-generator
codium --install-extension llvm-vs-code-extensions.vscode-clangd
codium --install-extension twxs.cmake
codium --install-extension formulahendry.code-runner
codium --install-extension streetsidesoftware.code-spell-checker
codium --install-extension streetsidesoftware.code-spell-checker-russian
codium --install-extension naumovs.color-highlight
codium --install-extension ms-azuretools.vscode-docker
codium --install-extension bierner.docs-view
codium --install-extension cschlosser.doxdocgen
codium --install-extension usernamehw.errorlens
codium --install-extension tamasfe.even-better-toml
codium --install-extension waderyan.gitblame
codium --install-extension mhutchie.git-graph
codium --install-extension donjayamanne.githistory
codium --install-extension GitHub.vscode-pull-request-github
codium --install-extension eamodio.gitlens
codium --install-extension PKief.material-icon-theme

rm -rv Microsoft.VisualStudio.Services.VSIXPackage*
wget --quiet --progress=bar --show-progress "https://quicktype.gallery.vsassets.io/_apis/public/gallery/publisher/quicktype/extension/quicktype/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage"
mv -v Microsoft.VisualStudio.Services.VSIXPackage quicktype-latest.vsix

codium --install-extension ./quicktype-latest.vsix

rm -v quicktype-latest.vsix
rm -rv Microsoft.VisualStudio.Services.VSIXPackage*

codium --install-extension christian-kohler.path-intellisense
codium --install-extension bradlc.vscode-tailwindcss
codium --install-extension 13xforever.language-x86-64-assembly
codium --install-extension pr1sm8.theme-panda


echo -e "[ THE SCRIPT IS DONE. EXITING IN 5sec. ]"
sleep 5
EOL


chmod +x install_vscodium_extensions.sh


nohup $term "./install_vscodium_extensions.sh" >> /dev/null 2>&1 &


print "Applying VSCodium settings"
mkdir -pv /home/$usr/.config/VSCodium/User/
cat >/home/$usr/.config/VSCodium/User/settings.json <<EOL
{
	"workbench.colorTheme": "Panda Syntax",
	"editor.fontFamily": "JetBrainsMono Nerd Font Mono",
	"editor.fontSize": 16.5,
	"editor.fontLigatures": true,
	"editor.wordWrap": "on",
	"workbench.iconTheme": "material-icon-theme",
	"cSpell.language": "en,ru",
	"cmake.showOptionsMovedNotification": false,
 	"go.formatTool": "gofmt",
} 
EOL


print "Installing LibreWolf"
sudo rpm --import https://rpm.librewolf.net/pubkey.gpg
sudo zy ar -ef https://rpm.librewolf.net librewolf
sudo zy ref 
sudo zy in --no-confirm librewolf


print "Installing Epiphany"
sudo zy in --no-confirm epiphany


print "Installing LunarVIM"
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)


print "Removing useless apps: Firefox, Transmission, Evolution"
sudo zy rm -u MozillaFirefox transmission-gtk evolution


print "Changing $usr's shell to fish"
sudo chsh $usr -s /usr/bin/fish


print "Installing fisher plugin installer for 'fish' shell"
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"


print "Installing TIDE prompt for 'fish' shell"
fish -c "fisher install IlanCosman/tide"


print "Installing fzf hotkeys for 'fish' shell"
fish -c "fisher install PatrickF1/fzf.fish"


print "Installing 'done notifications' for 'fish' shell"
fish -c "fisher install franciscolourenco/done"


print "Installing 'auto-complete matching pairs' for 'fish' shell"
fish -c "fisher install jorgebucaran/autopair.fish"


print "Updating 'tealdeer'"
tldr --update


print "Upgrading openSUSE"
sudo zy dup --allow-arch-change


echo -e "\n\n\n\n[      Let's Configure TIDE...     ]"
echo -e ":    waiting 7s to attract user    :"
sleep 7
fish -c "tide configure"


print "Configuring GNOME App Picker Layout"
app_picker
app_picker
app_picker
app_picker
app_picker


end_time=$(date +%s)
elapsed_time=$((end_time - start_time))
echo -e "\n\n$(tput bold)Elapsed time: $((elapsed_time/60)) min, $((elapsed_time%60)) sec instead of few hours. ;)"


echo -e "\n\n\n\n\n$(tput setaf 5)$(tput bold)Installed CLI programs that should increase your productivity:"
echo -e ""
echo -e "$(tput sgr0)$(tput bold)'tldr' $(tput sgr0)- Alternative to 'man' with much shorter texts."
echo -e "$(tput bold)'z' $(tput sgr0)or$(tput bold) 'zoxide' $(tput sgr0)- smarter 'cd' alternative."
echo -e "$(tput bold)'exa' $(tput sgr0)- Modern 'ls' alternative with better coloring and usage."
echo -e "$(tput bold)'btop' $(tput sgr0)- Similar to 'htop', but much more comfortable!"
echo -e "$(tput bold)'bat' $(tput sgr0)- Finally! 'cat' with syntax highlighting!"
echo -e "$(tput bold)'bmon' $(tput sgr0)- Network monitor in your terminal (i.e. bandwidth monitor)."
echo -e "$(tput bold)'fd' $(tput sgr0)- Alternative to 'find' where you can use multithreaded regular expression search."
echo -e "$(tput bold)'ncdu' $(tput sgr0)- Find out big files and dirs you don't need and delete them by pressing 'd' key."
echo -e "$(tput bold)'micro' $(tput sgr0)- comfy command-line text editor with familiar shortcuts and code syntax highlighting."
echo -e "$(tput bold)'progress' $(tput sgr0)- Huh? It looks like 'dd' is stuck? Nervously copying important files using 'cp' without any status info? Check out the progress of cp/mv/dd and other read & write processes in percentage."
echo -e ""
echo -e "$(tput setaf 5)$(tput bold)Just try it out! Enter:"
echo -e "$(tput sgr0)tldr fd"
