class User < ApplicationRecord
    has_many :posts, class_name: :post, foreign_key: "reference_id"
    has_many :comments
    has_many :likes
    has_secure_password
end
