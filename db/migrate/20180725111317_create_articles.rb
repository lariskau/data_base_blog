# On créé des articles qui ont comme attributs un titre, un contenu, et qui liés aux utilisateurs et aux catégories.
class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
