#====================================
#           RUBY & RAILS

#------------------------------------
#               MVC

#------------------------------------
#              VIEWS


views           # app/views


#   structure

noms du controller      # creer dossier pages
salut.html.erb          # nom action + rendre de l html + template erb
injecter du html
<%  RUBY  %>
<%= puts RUBY  %>


#------------------------------------
#              layout


# ici qu on mettra nos library css etc
# par defaut toutes nos vues vont utiliser
# application.html.erb
# header + body > yield
# yield -> ref a notre vue


#------------------------------------
#         PARTICULARITE RUBY


LA VUE A ACCES A TOUTES CE QUI A ETE DEFINI COMME
PROPRIETE D INSTANCE A NOTRE CONTROLLER
# on acces au variable passez ds le controller ?
# depuis la vue


#------------------------------------


voir les parametres ds la vue
# <%= params.inspect %>