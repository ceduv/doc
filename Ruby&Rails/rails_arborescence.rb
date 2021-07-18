#====================================
#           RUBY & RAILS

#------------------------------------

#           ARBORESCENCE


#---------------FOLDER---------------


app/        # CODE

    -> assets               # CSS / IMAGES
    -> channels             # WEB SOCKET : notif instant
    -> controllers          # LOGIQUE DE L APLI
    -> helpers              # FONCTIONS DISPONIBLE PARTOUT
    -> javascript           # JS
    -> jobs                 # TACHES
    -> mailers              # : EMAIL A ENVOYER
    -> models               # CLASSE BASE DE DONNEE
    -> views                # HTML


bin/        # EXECUTABLE

    -> bundle               # DIF EXECUTABLE
    -> rails                # UTILISABLE
    -> rake                 # ***
    -> setup                # ON TOUCHE PEU
    -> spring               # A CE DOSSIER
    -> webpack
    -> dev-server
    -> yarn


config/     # CONFIG DE L APLI

    -> environements/       # PHASE :

        -> development.rb   # DEV
        -> production.rb    # PROD
        -> test.rb          # TEST

    -> initializers/
    -> locales/
    -> webpack/
    -> database.yml         # CONF DB
    -> application.rb       # FONCTIONNEMENT FRAMEWORK
    -> ...


db/         # DATABASE
                            # COMMENT FAIRE EVOLUER DB
    -> seeds.rb             # SEEDING


lib/        # CODE RUBY
                            # EXTERNE STRUCTURE RAILS
    -> assets               # : CLASS GENERIQUE
    -> tasks                # PAS UN CONTROLLER


log/        # ERREURES

    -> ...                  # ERREURE PLACER ICI


node_module/    # ???

    -> ...                  # ???


public/     # FAIRE POINTER SERVER WEB
                            # APACHE ENGINEX
    -> ...                  # FICHIERS ICI
                            # REND SI TROUVE        ???
                            # SINON PASSE PAR RAILS ???
storage/        # ???

    -> ...                  # ???


test/       # TEST UNITAIRE / FONCTIONEL

    -> ...


tmp/        # FICHIER TEMP
                            # : CACHE
    -> ...                  # : SESSION


vendor/     # FILE LIBRARY EXTERNE

    -> ...                  # : BOOTSTRAP
                            # EVITE DE MELANGER
                            # AVER CODE DE L APLI


#----------------------FILE----------------------


->  Gemfile                 # LISTE DIFFERENT DEPENDANCE

->  Gemfile.lock            # LOCK LES DEPEND   ???
                            # BUNDLE INSTALL    ???
                            # EVITE LES PB      ???

-> config.ru                # SERT A RACK
                            # PERMET LANCER SERVER WEB
                            # ON TOUCHE PEU

-> Rakefile                 # == MAKE  ( EN RUBY )
                            # EXECUTER DES TACHES
                            # ON TOUCHE PEU