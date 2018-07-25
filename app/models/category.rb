# On informe que la catégorie à plusieurs articles
class Category < ApplicationRecord
  has_many :articles
end
