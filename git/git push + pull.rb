#           GIT

#---------------------------
#           MERGE

git checkout master         #   on se place ds master
git diff master..my_feature #   voir les diff
git merge my_feature


#---------------------------
#           PUSH

git remote add origin https://github.com/ceduv/hello.git # add serv
git remote -v   #   verifie si remote disponible
#git push <remote> <branch>
git push origin master  #   push sur github


#---------------------------
#           PULL
#git pull <remote> <branch>
# pull = fetch + merge
git pull origin master

git fetch #rapatrier une branch sans faire les merge
#util pour bosser sur la branch de quelqun d autre
