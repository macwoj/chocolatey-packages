choco install git -y
choco install vim -y
choco install putty -y
git clone https://github.com/powerline/fonts.git
./fonts/install.ps1 DejaVu*
git clone https://github.com/neilpa/cmd-colors-solarized.git
./cmd-colors-solarized/Update-Link.ps1 "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Bash on Ubuntu on Windows.lnk" light
./cmd-colors-solarized/Update-Link.ps1 "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" light
regedit /s ./cmd-colors-solarized/solarized-light.reg
git clone https://github.com/altercation/solarized.git
regedit /s ./solarized/putty-colors-solarized/solarized_light.reg
regedit /s ./putty_font.reg
regedit /s ./caps.reg
git clone https://github.com/macwoj/dotfiles.git
copy ./dotfiles/.vimrc ~\_vimrc
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
& 'C:\Program Files (x86)\Vim\vim80\gvim.exe' -c ":PlugInstall" -c ":q" -c ":q"
bash -c "./install_vim.sh"