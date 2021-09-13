#====================================
#           RUBY & RAILS

#------------------------------------
#          ACTION MAILER

# PERMET DE GENERER UN MAIL OU DE LA PLACE
# EN QUEUE GRACE A UN SYSTEM EXT
# EN CLI
rails g mailer ContactMailer
# cree fichier de test / preview / contactmailer

# ds mailers ContactMailer < ApplicatonMailer
# ds ApplicationMailer config par defaut

default from: 'from@example.com'
layout 'mailer'

# va fonctioner comme une vue classqiue
# vue qui met en page l email

# ds contact_mailer.rb
def contact
    mail(to:'contact@test.fr', subject:'Sujet de test')
end

# ds mailers/previews/contact_mailer_preview.rb
# permet de verifier et analyser son email
# on copie l url pour avoir la vue
localhost:3000/rails/mailers/contact_mailer

def contact
    ContactMailer.contact()
end

# ds views/layouts/mailer.hmtl.erb et mailer.text.erb
# 2 formats ex: text html ou les 2

# ds views/contact_mailer créer
contact.html.erb
contact.text.erb
# on peut voir les 2 formats

#---

# ON PEUT AJOUTER UN ARTICLE AU MAIL
# ds contact_mailer_preview.rb
def contact
    ContactMailer.contact(Post.first)
end
# ds contact_mailer.rb
def contact(post)
    @post = post
    mail(to:'contact@test.fr', subject:'Sujet de test')
end
# utilisable au niveau du template
# ds la vue html
<h1> Bonjour <%= @post.name % ></h1>

# GLOBALEMENT LES MAILERS DOIVENT ETRE PENSER DE
# MANIERE INDEPENDANTE ? NE DOIVENT PAS FAIRE DE REQUETE
# NI DE TRAITEMENT
# on les utilise ds les controllers et on passera en argument
# ce dont on a besoin

# ds contact.html.erb
<h1> Bonjour </h1>
<p> Comment ca va ?</p>
<p>
    <%= link_to "Voir l'article", @post % >
</p>
# erreure rails ne trouve pas l'hote
# lorsquon fait un lien, il faut preciser le nom d'hote
<%= link_to "Voir l'article", post_url(@post, host: 'http://rafikart.fr') % >
# plus d'erreur

# on peut aussi gere ce pb de maniere glocale sans modifier le lien
<%= link_to "Voir l'article", @post % >
# ds configuration/application.rb
# changer le nom d'hote
config.action_mailer.default_url_options = {
    host: 'http://grafikart.fr'
}
# on peut le aussi en dev||prod

# possibilite de changer la configuration d envoi d'email
# guides r&r action_mailer_basic.html
6.2
Action mailer configuration Gmail
# use Mail gem
# copy
# ds configuration/dev.rb   # colle
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings ={
    address:    'localhost',
    port:       1025,
    domain:     'localhost'
}

# grafikart utilise en local maildev ???
# maildev mailtrap ( a voir )
localhost:1080
# interface permettant de previsualiser les mails

# ds controllers/pages_controllers.rb
def home
    ContactMailer.contact(Post.first).deliver_now
    # deliver_later permet d envoyer l email de maniere asynchrone
end








