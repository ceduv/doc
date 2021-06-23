#           GIT

#---------------------------
#          COMMIT

# photo du projet => add(photo)+commit
git add file1
git add file2
git add *.txt ### par extension
git add --all ###
git add . #idem que all mais ne commit pas les suppressionS
git commit --message "le message"
git commit -m ""
git commit -a # a la voler ??

# editer LE COMMIT
git commit --ammend -m "blablabla"

#           DIFF

git diff    =>  # modif depuis le dernier commit
git config --global core.pager cat # evitez louverture ds le diff
q # pour leave le dossier si <end>
