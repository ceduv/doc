#===========================
#           GIT

#---------------------------
#           REMOTE

git init --bare                 #   depot git sans dossier de travail

#   creation
git remote add origin c:/site   #   remote add nom adress
git remote -v                   #   voir le remote existant

#   voir
git branch -r                   #   inspecter les branch

# push / pull
git push origin master          #   permet d envoyer les modif
                                #       git push ou quoi
#---
git pull origin master          #   permet de recup les modif
                                #       git pull ou quoi

# clone
git clone c:/site clone-git --depth 1     #   clone quoi / ou profondeur

# remove
git remote remove origin        #   suppr le remote

# changer un repository
git remote set-url origin git@github.com:ceduv/railsTest.git
https://github.com/<Username>/<Project>.git     # format url
git@github.com:<Username>/<Project>.git         # format ssh
# link -> https://stackoverflow.com/questions/14762034/push-to-github-without-a-password-using-ssh-key


git branch -d test
git push origin --delete test   #   suppr branch test de origin

#----------------------------

# rename
git remote rename origin lol    #   rename remote