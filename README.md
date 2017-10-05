## Project Idea

Sports Fantasy Leagues. Would allow users to keep track of all of their Yahoo sports fantasy league rosters and games (NFL, NBA, MLB and NHL). Users will be able to set up their own leagues of 8-12 users. Although, I am not a sports fantasy league follower or player, I am sure there is a huge market for it and it is something that would be used and make life easier. Everything in one place.

## User stories

1. User is able to signup upon arriving to homepage by selecting the login/signup button and selecting signup tab on modal pop up.
2. User is able to login upon arriving to homepage by selecting the login/signup button and typing in username and corresponding user password on the defualt on load login modal tab.
3. User is able to pull their Yahoo Sports Fantasy Leagues rosters after athentication and should be stored and update every time the correspoding link gets clicked.
4. User is able to view statistics of Yahoo Sports Fantasy Leagues rosters and individual athletes.
5. User is able to store statistics to see averages of Yahoo Sports Fantasy Leagues rosters and individual athletes.

## Plan your tables and columns

I would need a table for user information, a table for user rosters in each sport covered (NFL, NBA, MLB and NHL) and a table for current day highlights. For the user table, it would have columns for authentication and user is allowed to add links to their favorite leagues.

## ERD (entity relationship diagram)

<img src="https://image.ibb.co/fpjSu5/ERD_full_stack_pro.png" alt="ERD_full_stack_pro" border="0">


## Routing

What routes will you need to be able to make the proper request to your API?

GET
1. get '/players' => 'players#show'
2. post '/players' => 'players#create'
3. delete '/players/:id' => 'players#destroy'
4. patch '/players/:id' => 'players#update'
5. get '/rosters' => 'rosters#show'
6. post '/rosters' => 'rosters#create'
7. delete '/rosters/:id' => 'rosters#destroy'
8. patch '/rosters/:id' => 'rosters#update'
9. get '/games' => 'games#show'
10. post '/games' => 'games#create'
11. delete '/games/:id' => 'games#destroy'
12. patch '/games/:id' => 'games#update'
13. get '/leagues' => 'leagues#show'
14. post '/leagues' => 'leagues#create'
15. delete '/leagues/:id' => 'leagues#destroy'
16. patch '/leagues/:id' => 'leagues#update'


## 3rd Party APIs

Yahoo Sports Fantasy API https://developer.yahoo.com/fantasysports/guide/

## Wireframes

<img src="https://image.ibb.co/msjOE5/Wireframe_Rails_Project.png" alt="Wireframe_Rails_Project" border="0">


## Timetable
