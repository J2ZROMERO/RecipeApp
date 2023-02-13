class User < ApplicationRecord
    has_many :foods , foreign_key: :user_id, dependece: :destroy
    has_many :recipes , foreign_key: :user_id, dependece: :destroy
end
