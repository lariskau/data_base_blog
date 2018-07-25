# On informe que nos utilisateur peuvent faire plusieurs articles et plusieurs likes
class User < ApplicationRecord
  has_many :articles
  has_many :likes
end
