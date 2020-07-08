class User < ActiveRecord::Base
    has_many :reviews

    validates :username, :email, 
        uniqueness: { message: "Please use a unique username and/or email." }
    validates :username, :email, :password, 
        presence: { message: "Please make sure all the required fields are filled in." }

    has_secure_password
end