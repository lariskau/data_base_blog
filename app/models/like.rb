# On informe que un Like appartient à un utilisateur et à un article
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
end
