class Review < ActiveRecord::Base
    belongs_to :user

    validates :name, 
        presence: { message: "Please make sure there is a name for what you are reviewing." }

end