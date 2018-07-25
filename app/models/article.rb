# On informe que nos articles sont liés aux utilisateurs et n'ont qu'une seule catégorie, et plusieurs commentaires et likes
class Article < ApplicationRecord
  belongs_to :user
  has_one :category
  has_many :comments
  has_many :likes
end
