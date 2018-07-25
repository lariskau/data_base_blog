# README

* Ruby version 5.1.2

* Ruby rails 5.2

Ce projet a été réalisé par Edouard Plantevin et Léa Bougaut

Les consignes :

1.2. Une app rails, et ses models
Dans cette partie, tu vas construire une app rails, appliquer une architecture, puis faire les models et les bonnes associations.

1.2.1. LES BASES
Commence par créer une application rails, puis mets les bonnes versions de ruby et rails dans le Gemfile.

1.2.2. LES USERS
Crée une classe user, qui aura comme attributs :

Un first_name, qui est un string
Un last_name, qui est un string
Un email, qui est un string
Après avoir fait ta migration, va dans la console et amuse-toi à créer des utilisateurs et à changer leurs first_name, last_name, etc. Bien maitriser la console est indispensable pour tester à la volée ses models, donc fais-le.

Puis, crée avec le seed 10 utilisateurs.

1.2.3. LES ARTICLES
Ajoute un model d'article. Un article a forcément un auteur (qui est un user) et aura comme attributs :

Un title, qui est un string
Un content, qui est un text
Un utilisateur peut écrire plusieurs articles, et un article a forcément un auteur (qui est un utilisateur).

Pour tester si ton association marche, va en console, et essaie d'ajouter à la main des articles à tes utilisateurs. Un truc du genre :

u = User.first
a = Article.new
a.user = u
u.save
Devrait faire l'affaire. Lis-bien ce que le terminal te renvoie.

ASTUCE DU JOUR : si jamais le terminal te fait un truc du genre :

u.save
   (36.6ms)  BEGIN
   (24.4ms)  ROLLBACK
Tu peux faire la méthode #errors pour que ActiveRecord te dise ce qui ne va pas.

Bref, fais-toi la main avec la console, crée des articles en base. C'est normal de prendre un peu de temps pour se faire la main avec la console. On est tous passés par là 😉

Puis, crée avec le fichier seed 10 articles en base de données.

1.2.4. LES CATÉGORIES
Ajoute un model de catégorie. Un article a une catégorie, et une catégorie peut concerner plusieurs articles. Voici ses attributs :

Un name, qui est un string
Après bien entendu t'être amusé·e avec la console, crée avec le seed 5 catégories, puis associe tes 10 articles à une des catégories.

1.2.5. LES COMMENTAIRES
Maintenant nous allons mettre en place un système de commentaires. Un commentaire commentera un article, et aura un auteur (qui est un utilisateur). Un utilisateur peut créer plusieurs articles, et un article peut avoir plusieurs commentaires. Un commentaire aura comme attributs :

Un content, qui est un text
Crée dans le seed 15 commentaires, que tu assigneras à des utilisateurs et à des articles.

1.2.7. LES LIKES
Allez, maintenant nous allons faire en sorte de pouvoir liker un article. Un like concerne un article, et est fait par un likeur (qui est un utilisateur). Un utilisateur peut avoir plusieurs likes, et un article peut avoir plusieurs likes. Le like n'aura pas trop besoin d'attributs donc nous n'allons pas lui en donner 😎

On ne change pas les bonnes habitudes : créé donc 15 likes en BDDs avec le seed.

💡 INSTANT MIND BLOWN 🧠 : si tu es malin, tu peux te rendre compte qu'un article peut avoir plusieurs likeurs (utilisateurs), et un utilisateurs peut avoir plusieurs articles likés (articles). Mais, mais, mais, cela ne ressemblerait pas à une relation N-N ? Et si chef, et tu viens de comprendre comment gérer une relation N-N dans rails : grâce à une table entre deux tables, et une petite ligne de code dans le model. C'est aussi simple que cela 🤠 Bref, nous verrons ceci plus en détails demain, mais je pense que tu as compris l'astuce 🤓

1.2.8. LE FAKER
Allez, OKLM, puisque c'est toi : utilise la gem Faker pour faire en sorte que les attributs des différents models soient au top de la forme. Tu devrais donc —légèrement— modifier le seed pour que la création d'articles toussa ait du faker pour avoir des attributs stylay.
