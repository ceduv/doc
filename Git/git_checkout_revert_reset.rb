#===========================
#           GIT

#---------------------------
#         CHECKOUT

git checkout my_feature         # se positionner sur une branch
git checkout master             # revenir sur master    
git checkout 123123             # revenir au commit 123123 (!commit)
git checkout 123123 index.html  # revient a 123123 (commit ok)

#---------------------------
#           REVERT

git revert 123123   # defait le commit 123123
                    # !!! on peut revert de revert 
                    # donc annuler une annulation...
                    # on ne perd rien ds l historique

#---------------------------
#           RESET

# *** supprime les choses
git reset 123122            # suppr 123123 espace travail conserver
git reset 123122 --hard     # suppr 123123 espace travail reset
git reset --hard            # revient au dernier commit