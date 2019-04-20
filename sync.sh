ls -a | grep -v sync.sh | grep -v .git | xargs rm -rf

cp ~/.fonts ./ -r
cp ~/.config/ .config/ -r
cp ~/.xrdb/ ./.xrdb -r
cp ~/.themes/ ./.themes -r
cp ~/.bashrc ./
cp ~/.Xresources ./
cp ~/.fvwm ./

git add .
git commit . -m "updated dots"
git push
