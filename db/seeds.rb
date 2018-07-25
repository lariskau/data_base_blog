# On utilise la gem faker pour générer des fausses info stylay
require 'faker'

# On génère 10 faux utilisateur avec faker, Harry Potter s'il vous plait !
10.times do |index|
  user = User.create(first_name: Faker::HarryPotter.character, last_name: Faker::HarryPotter.house, email: Faker::Internet.email)
end

# On génère 10 faux article avec faker, toujours Harry Potter mood, et on attribut un utilasteur au hasard avec random
10.times do |index|
  a = rand(1..10)
  b = 1
  article = Article.create(title: Faker::HarryPotter.book, content: Faker::HarryPotter.quote, user_id: a, category_id: b)
end

# On génère 5 fausses catégories avec faker
5.times do |index|
  b = rand(1..5)
  category = Category.create(name: Faker::HarryPotter.location)
end

# On génère 15 fausse commentaires avec faker, et on met des ID random
15.times do |index|
  a = rand(1..10)
  b = rand(1..10)
  comment = Comment.create(content: Faker::HarryPotter.spell, user_id: a, article_id: b)
end

# On génère 15 faux like qui n'ont pas besoin d'attribut et on met des ID random
15.times do |index|
  a = rand(1..10)
  b = rand(1..10)
  like = Like.create(user_id: a, article_id: b)
end
