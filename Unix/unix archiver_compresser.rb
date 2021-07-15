#--------------------------------
#--------------UNIX--------------
             

#------------ARCHIVER------------


# 1 - réunir les fichiers dans une archive
# 2 - compresser le fichier à l'aide de gzip ou bzip2

tar -cvf nom_archive.tar nom_dossier/

-c      # créer une archive tar 
-v      # afficher le détail des opérations 
-f      # assembler l'archive dans un fichier


#          AFFICHER SANS EXTRAIRE

tar -tf nom_archive.tar

#            AJOUTER UN FICHIER

tar -rvf nom_archive.tar fichier_supplementaire

#       EXTRAIRE FICHIER DE L ARCHIVE

tar -xvf tutoriels.tar 
# verifier que les fichiers sont ds un dossier
# sinon en cree un et extraire dedans


#-----------COMPRESSER------------


.tar.gz         # compressée avec gzip (le + utilisé)
.tar.bz2        # compressée avec bzip2


#   ARCHIVE + COMPRESSION


tar -zcvf tutoriels.tar.gz tutoriels/ # gzip +++
tar -jcvf tutoriels.tar.bz2 tutoriels/ # bz2


#   DECOMPRESSION + DESARCHIVAGE


tar -zxvf tutoriels.tar.gz tutoriels/ # gzip +++
tar -jxvf tutoriels.tar.bz2 tutoriels/ # bz2


#       COMPRESSION


gzip tutoriels.tar # gzip +++
bzip2 tutoriels.tar # bz2


#       DECOMPRESSION


gunzip tutoriels.tar.gz # gzip +++
bunzip2 tutoriels.tar.bz2 # bz2


# AFFICHER DIRECTEMENT UN GZIP / BZ2


zcat    # cat , lire un fichier compressé
zmore   # more , lire un fichier compressé
zless   # less , lire un fichier compressé


#        UNZIP / UNRAR


sudo apt-get install unzip
#---
sudo apt-get install unrar

unzip archive.zip           # extraire
unzip -l tutoriels.zip      # voir sans extraire
#---
unrar e tutoriels.rar       # extraire  *** ! -
unrar l tutoriels.rar       # voir      *** ! -

# zippé
zip -r tutoriels.zip tutoriels/
# (necessite de dl zip)
