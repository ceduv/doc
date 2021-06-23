#           GIT

#---------------------------
#          STASH

# permet de mettre en pause la branch sur laquelle
#   on travail et revenir au dernier commit
#   permet du coup apres un stash de changer de branch

git stash                   #   nom par defaut
git stash save nomDuStash   #   avec nom

git stash list              #   voir les stash en cour
git stash show stash@{x}    #   voir le stash
                            #       ex : stash@{1}
git stash show stash@{x} -p #   voir diff                        

git stash -u                #   ajoute les fichier untrack

#--- APPLY / DROP
git stash apply             #   revenir avant le stash
                            #   on peut aussi apply le stash dans une nouvelle branch ***
git stash drop              #   suppr le dernier elmt en stash
#   POP
#   apply + drop 
git stash pop stash@{x}     #   *** saute le rapport de conflit de apply

