cd ~/workspace/codes/rails/clapme_dashboard
bundle install
git add .
git commit -m "clapme_dashboard: auto deploy"
git push -f origin master
git push -f heroku master
