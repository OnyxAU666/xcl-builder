clear
sudo apt update && sudo apt upgrade -y

sudo apt install -y git git-lfs 7zip apache2

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 22

wget https://github.com/tmedwards/tweego/releases/download/v2.1.1/tweego-2.1.1-linux-x64.zip
sudo 7z e tweego-2.1.1-linux-x64.zip tweego
sudo chmod +x ./tweego

mkdir xcl-git
cd xcl-git
git clone https://gitgud.io/xchange-life/xchange-life.git
cd xchange-life
npm install

wget https://raw.githubusercontent.com/OnyxAU666/xcl-builder/refs/heads/main/update.sh

echo ''
echo 'Please run "./update.sh" any time you want to pull and rebuild'
echo 'Do this from the xchange-life folder by typing "cd" to get to your home directory, if not already there'
echo 'You can then type "cd xcl-git/xchange-life"'
echo ''
echo 'Press the "any" key to continue'
read