#           GIT

#---------------------------
#           LOG

git log     =>  # voir les derniers commit
git log --oneline
git log -n 2 => # 2 derniers commit
git log -n 2 -p test.html => # 2 derniers commit concernant test.html

#---------------------------
#          BRANCH

git branch my_feature  #    creer une branch
git branch             #    voir les branch
git checkout my_feature     #   se positionner sur une branch
#sup
git branch -d my_feature    #   suppr une branch
# avertissement si oublier de merge
git branch -D my_feature
# pas d avertissement