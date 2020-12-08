
citystroll
Owner/s: 
Amelia Elton & Simon Cohen


Mod and Cohort:
Mod2 1026

App description:
This app will connect a user with a walking tour of a city of their choice. 

Domain model with attributes:

 User --< Post >-- City

 User--< Favorites >-- Post 

 User --< Comments >-- Post

User: name(str), age(int), username(str), password(str)
Post: title (str), user_id (int), city_id (int), link (str), description(text), likes (int), timestamp
Favorites: user_id (int), city_id (int), post_id (int), timestamp
Comments:  user_id (int), post_id (int), text (text)
City: name(str), country (str)


User Stories:

User will be able to:
Create an account with a secure password,
Log in,
View their Favorite posts,
View cities walking videos,
Upload a walking video via Youtube link,
Select a city from a list,
Leave comments on a video,
Delete their comments,
Delete their posts
