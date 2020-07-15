class User < ActiveRecord::Base
    has_many :reviews

    validates :username, :email, 
        uniqueness: { message: "must be unique." }
    validates :username, :email, 
        presence: { message: "can't be blank." }

    has_secure_password
end