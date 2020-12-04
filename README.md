
citystroll
Owner/s: 
Amelia Elton & Simon Cohen


Mod and Cohort:
Mod2 1026
One sentence app description:
This app will connect a user with a walking tour of a city of their choice. 
Domain model with attributes:

 User --< Post >-- City

 User--< Favorites >-- Post 

 User --< Comments >-- Post

User: name(str), age(int), username(str), password(str)
Post: title (str), user_id (int), city_id (int), link (str), timestamp
Favorites: user_id (int), city_id (int)
Comments:  user_id (int), post_id (int), text (text)
City: name(str), country (str)
Friends: user_id (int), user_id (int), timestamp 


User Stories:

E.g. User will be able to:
Create an account with secure password,
Log in,
View their Favorite cities,
View cities walking videos,
Upload a walking video via Youtube link,
Select a city from a map,
Leave comments on a video,
Delete account,
etc.


Timeline:

Monday:  activerecord models, controller actions, routes, view pages
Tuesday: user functionality
Wednesday: user functionality, helper methods
Thursday: css, map?, view pages
Friday: 
Weekend:
Monday:




TODO:

refactor with before action
refactor routes
message for duplicate favorites



