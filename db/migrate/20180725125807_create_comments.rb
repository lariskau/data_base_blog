# On créé des commentaires qui ont pour attributs un content et sont liés au utilisateurs et aux articles
class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      t.timestamps
    end
  end
end
