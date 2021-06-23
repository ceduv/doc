#           GIT

#----------------------------
#           CONFIG

git config --list                   #   voir la config de git
git config -l

# IDENTITY

git config --global user.name "ced duv"
git config --global user.email  "cedduvillier@gmail.com"

# REBASE

git config --global branch.autosetuprebase always
# tj dans git pull => rebase

# DIFF

git config --global core.pager cat  #   evitez louverture ds le diff
q                                   #   pour leave le dossier si <end>