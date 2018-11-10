mkdir .config
mkdir .config/tint2 .config/openbox .config/ranger .config/fish
cp ~/.config/tint2/* .config/tint2/* -r
cp ~/.config/openbox/* .config/openbox/* -r
cp ~/.config/ranger/* .config/ranger/* -r
cp ~/.xrdb/* ./.xrdb/* -r
cp ~/.themes/* ./.themes/* -r
cp ~/.config/fish/* ./.config/fish* -r
cp ~/.bashrc ./
cp ~/.vimrc ./
cp ~/.Xresources ./

git add .
git commit . -m "updated dots"
git push
