class Review < ActiveRecord::Base
    belongs_to :user

    validates :type_of_media, :name, :completion, :review_score, 
        presence: { message: "Please make sure all the required fields are filled in." }

end