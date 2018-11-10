ls -a | grep -v sync.sh | grep -v .git | xargs rm -rf

mkdir .config
cp ~/.config/tint2/ .config/ -r
cp ~/.config/openbox/ .config/ -r
cp ~/.config/ranger/ .config -r
cp ~/.xrdb/ ./.xrdb -r
cp ~/.themes/ ./.themes -r
cp ~/.config/fish/ ./.config -r
cp ~/.bashrc ./
cp ~/.vimrc ./
cp ~/.Xresources ./

git add .
git commit . -m "updated dots"
git push
