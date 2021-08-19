#====================================
#           RUBY & RAILS

#------------------------------------
#              CLASS

# CREATION DOSSIER validator/name_validator.rb
# class
class NameValidator < ActiveModel::Validator

    def validate(record) # prend en param l enregistrement

        if record.name.nil? || record.name.length != 2
            record.errors.add(:name, :not_2, { message: 'Le champs doit etre de 2 carac'})
        end

        if record.content.nil? || record.content.length != 2
            record.errors.add(:content, 'Le champs doit etre de 2 carac')
        end

    end
end

# DANS LE MODEL

validates_with NameValidator

# CONFIGURATION

# config/application.rb
# ds la class
class Application < Rails::Application
# on inlu notre fichier
config.autoload_paths << "#{Rails.root}/app/models/validators"


#------------------------------------
#              EACH VALIDATOR

# DANS LE MODEL

validates :name, name: true     #, name packe notre fcihier
validates :content, name: true  # s apl name_validator ?

# CLASS
class NameValidator < ActiveModel::EachValidator
    def calidates_each(record,attribute,value)  # 3 params
        if value.nill? || value.length !=2
            record.errors.add(attribute,'doit avoir 2 caracteres')
        end
    end
end












