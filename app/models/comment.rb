# On informe que nos commentaires sont liés aux utilisateurs et n'ont qu'un seul article
class Comment < ApplicationRecord
  belongs_to :user
  has_one :article
end
