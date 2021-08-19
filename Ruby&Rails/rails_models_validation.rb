#====================================
#           RUBY & RAILS

#------------------------------------
#    MODELS , VALIDATION DE DONNEES

# la validation ce gere au niveau des models
# no models herite de :
ApplicationRecord < Activerecord::Base

# verifie que le nom est bien present
validates :name,presence: true
# si le nom n est pas present ne valide pas


#------------------------------------
#       LES DIFF VALIDATIONS

presence:               # verifie val n est pas vide ou nil
length: {minimum: 5}    # taille min
length: {maximum: 5}    # taille max
length: {is: 5}         # taille ==
length: {in: 5..20}     # taille entre
allow_blank: true       # autorise enregistrement vide
allow_nil: true         # autorise valeur nil
strict: true            # exceptions
strict: NOM_DE_CLASSE   # exceptions au niveau d une classe
format: {with: /\A[a-zA-Z]+\z/ }    # format + exp reguliere
                                    # seulement des lettres
uniqueness: true        # verifie si unique en db
acceptance: true        # verifie si une checkbox a ete coché

validates :password,confirmation: true
                        # verifie que l utilisateur a bien
                        # rentré password_confirmation

validates :name, length: { is: 2 }, on: :create
                        # on: :create
                        # permet de checker la validation
                        # seulement lors de la creation
                        # de nouveau contenue

validates :name, length: { is: 2 }, if: :check_content_2
def check_content_2
    content.length == 2
end
                        # permet d ajouter une condition
                        # aux validate grace a une
                        # methode créé

validates :name, length: { is: 2 }, if: Proc.new{ |record| record.content.length == 2}
                        # condition avec proc

validate_email          # gem rails
                        # une regle qu on peut ajouter

validate :ma_methode_validation     # sans (s)

def ma_methode_validation
    if name.nil? || name.length != 2
        errors.add(:name, :not_2, { message: 'Le champs doit etre de 2 carac'})
        # erreure de validation
        # errors = methode sur l objet qui permet de recup les erreurs
        # add (2params) 1 nom du champs avec erreur
        #               2 le message
        # erreure de type not_2 (symbol ???)
        # qui ressort sur p.errors.details[:name] en rails c
    end
    if content.nil? || content.length != 2
        errors.add(:content, 'Le champs doit etre de 2 carac')

    end
end

#------------------------------------
#         CLASS VALIDATION

# VALIDATOR PLACER DS MODELS
# S IL AFFECTE AUTRE CHOSE QUE DES MODELS
# PLACER DS APP
# creation d un dossier validators/name_validator.rb


#------------------------------------
#           post.controller

# pour update
def update
    # action_before :set_post
    if @post.update(post_params)
      redirect_to posts_path,success: "article modifié avec succes"
    else
      render 'edit'
    end
end

# si l article est modifé aves succes => message
# sinon => rend edit avec l erreur mise en evidence
# balise html filest with errors en source
# grace au helpers mis dans la vue edit.html.erb
f.text_field


#------------------------------------
#           EDIT.HTML.ERB

# VIEWS
###___
<% if @post.invalid? % >    # si l enregistrement n est pas valid
    <div class="alert alert-danger">
        <% @post.errors.full_messages.each do |message| % >
            # bouclé sur les erreures
            # full_message pour recup l ensemble des messages
            # .each bouclé  tableau qui contient les messages
            <%= message % >
        <% end % >
    </div>
<% end % >

#------------------------------------
#   PERSONALISER MESSAGES D ERREURES

config/locales/en.yml
# ici qu l on peut gerer les messages par lang

#---

ds les models
validates :name,presence: true
#--->
validates :name,presence: {message:'est vide.'}


#------------------------------------
# SUR LE SERVEUR
rails c
# si
p = Post.create(name: '')
# aucun enregistrement car string vide
# on cree quand meme une instance de post

p.valid?
# bool valide ou non

p.invalide?
# idem

p.errors
# contient l ensemble des erreures

p.errors[:name]
# renvoi l erreure lié a name

p.errors.details[:name]
# erreures detaillés

p.errors.messages
# renvoi des messages expliquant les erreures

p.errors.full_messages
# tableau avec ensemble des erreures de validation

p.save(validate: false)
# permet d ignorer la validation

p.update_column(:name, '')
# changer le nom d une colone

p.destroy
# detruire