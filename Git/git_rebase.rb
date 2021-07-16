#===========================
#           GIT

#---------------------------
#          REBASE

git pull --rebase origin master
#   fusionner une branch a master
#   eviter d avoir un historique en bordel
#   on fusionne la merge 

#----------------------------
#           CONFIG

git config --global branch.autosetuprebase always
# tj dans git pull => rebase
