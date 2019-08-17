# The Movie DataBase Assignment For R2D2 
## Introduction
I am using The Movie Database API.
I am able to access database Using API. I created two modules.
## Module-A
### this module is based on api response.When user click on API SEARCH tab.He can write movie name and this api send back to us raw JSON.
We parse this data and using BOOTSTARP framework.We can beautifully represent movie name,rating, overview, release date etc.
### Without any search [API-SEARCH]: 
![alt Img-1](https://github.com/NikhilKrDwivedi/R2D2-Assignment/blob/master/Project-Screenshots/API_Search-1.png)
### After User search any movie [API-SEARCH]:
![alt Img-1](https://github.com/NikhilKrDwivedi/R2D2-Assignment/blob/master/Project-Screenshots/API_Search-2.png)

Along with api request, we save this response into our datebase. Every user may search different movie. In this way we have rich database.
To prevent duplicate entry. We make movie id as primary key.
## Module-B
### In this module, user can directly query in our local datebase, where we store movie data.
### Without any search [DataBase-SEARCH]: 
![alt Img-1](https://github.com/NikhilKrDwivedi/R2D2-Assignment/blob/master/Project-Screenshots/Local-Search-1.png)
### After User search any movie [DataBase-SEARCH]: 
![alt Img-1](https://github.com/NikhilKrDwivedi/R2D2-Assignment/blob/master/Project-Screenshots/Local-Search-2.png)
