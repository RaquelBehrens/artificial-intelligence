/* Cities */
city(geiranger).
city(loen).
city(kristiansand).
city(kragerø).
city(oslo).
city(trondheim).
city(kirkenes).
city(stavanger).

/* Temperature */
temperature('26_to_11').
temperature('18_to_minus5').
temperature('20_to_minus2').
temperature('0_to_minus12').

/* Attractions */
attraction(hiking).
attraction(fjord_sightseeing).
attraction(fjord_cruise).
attraction(kayaking).
attraction(rafting).
attraction(museum).
attraction(skylift).
attraction(via_ferrata).
attraction(camping).
attraction(park).
attraction(beach).
attraction(church).
attraction(opera_house).
attraction(fortress).
attraction(botanical_garden).
attraction(seafood).
attraction(pub).
attraction(ferry).
attraction(dogsled_tour).
attraction(snow_mobiling).
attraction(ice_fishing).
attraction(northern_lights).
attraction(lighthouse).

/* With which group of people can you go with to the attracition */
attractionCategory(family).
attractionCategory(solo).
attractionCategory(group).

/* Seasons */
season(summer).
season(winter).
season(fall).
season(spring).


/* Associations */

attractionDangerLevel(hiking, high).
attractionDangerLevel(fjord_sightseeing low).
attractionDangerLevel(fjord_cruise, low).
attractionDangerLevel(kayaking, high).
attractionDangerLevel(rafting, high).
attractionDangerLevel(museum, low).
attractionDangerLevel(skylift, high).
attractionDangerLevel(via_ferrata, low).
attractionDangerLevel(camping, medium).
attractionDangerLevel(park, low).
attractionDangerLevel(beach, medium).
attractionDangerLevel(church, low).
attractionDangerLevel(opera_house, low).
attractionDangerLevel(fortress, low).
attractionDangerLevel(botanical_garden, low).
attractionDangerLevel(seafood, low).
attractionDangerLevel(pub, low).
attractionDangerLevel(ferry, low).
attractionDangerLevel(dogsled_tour, medium).
attractionDangerLevel(snow_mobiling, medium).
attractionDangerLevel(ice_fishing, low).
attractionDangerLevel(northern_lights, low).
attractionDangerLevel(lighthouse, low).

seasonTemperature(winter, '0_to_minus12').
seasonTemperature(fall, '20_to_minus2').
seasonTemperature(spring, '18_to_minus5').
seasonTemperature(summer, '26_to_11').

seasonAttraction(winter, skiing).
seasonAttraction(winter, museum).
seasonAttraction(winter, church).
seasonAttraction(winter, opera_house).
seasonAttraction(winter, fortress).
seasonAttraction(winter, botanical_garden).
seasonAttraction(winter, seafood).
seasonAttraction(winter, pub).
seasonAttraction(winter, dogsled_tour).
seasonAttraction(winter, snow_mobiling).
seasonAttraction(winter, ice_fishing).
seasonAttraction(winter, northern_lights).

seasonAttraction(spring, hiking).
seasonAttraction(spring, fjord_sightseeing).
seasonAttraction(spring, fjord_cruise).
seasonAttraction(spring, museum).
seasonAttraction(spring, skylift).
seasonAttraction(spring, camping).
seasonAttraction(spring, park).
seasonAttraction(spring, church).
seasonAttraction(spring, opera_house).
seasonAttraction(spring, fortress).
seasonAttraction(spring, botanical_garden).
seasonAttraction(spring, seafood).
seasonAttraction(spring, pub).
seasonAttraction(spring, via_ferrata).

seasonAttraction(summer, hiking).
seasonAttraction(summer, fjord_sightseeing).
seasonAttraction(summer, fjord_cruise).
seasonAttraction(summer, kayaking).
seasonAttraction(summer, rafting).
seasonAttraction(summer, museum).
seasonAttraction(summer, skylift).
seasonAttraction(summer, via_ferrata).
seasonAttraction(summer, camping).
seasonAttraction(summer, park).
seasonAttraction(summer, beach).
seasonAttraction(summer, church).
seasonAttraction(summer, opera_house).
seasonAttraction(summer, fortress).
seasonAttraction(summer, botanical_garden).
seasonAttraction(summer, seafood).
seasonAttraction(summer, pub).
seasonAttraction(summer, ferry).
seasonAttraction(summer, lighthouse).

seasonAttraction(fall, hiking).
seasonAttraction(fall, fjord_sightseeing).
seasonAttraction(fall, fjord_cruise).
seasonAttraction(fall, kayaking).
seasonAttraction(fall, rafting).
seasonAttraction(fall, museum).
seasonAttraction(fall, skylift).
seasonAttraction(fall, via_ferrata).
seasonAttraction(fall, camping).
seasonAttraction(fall, park).
seasonAttraction(fall, church).
seasonAttraction(fall, opera_house).
seasonAttraction(fall, fortress).
seasonAttraction(fall, botanical_garden).
seasonAttraction(fall, seafood).
seasonAttraction(fall, pub).
seasonAttraction(fall, northern_lights).

activityGroup(skiing, group).
activityGroup(skiing, family).
activityGroup(skiing, solo).
activityGroup(fjord_sightseeing, group).
activityGroup(fjord_sightseeing, family).
activityGroup(fjord_sightseeing, solo).
activityGroup(fjord_cruise, group).
activityGroup(fjord_cruise, family).
activityGroup(fjord_cruise, solo).
activityGroup(zoo, group).
activityGroup(zoo, family).
activityGroup(zoo, solo).
activityGroup(cuisine, group).
activityGroup(cuisine, family).
activityGroup(cuisine, solo).
activityGroup(boat_house, group).
activityGroup(boat_house, family).
activityGroup(boat_house, solo).
activityGroup(hiking, group).
activityGroup(hiking, solo).
activityGroup(kayaking, group).
activityGroup(rafting, group).
activityGroup(museum, solo).
activityGroup(museum, group).
activityGroup(museum, family).
activityGroup(skylift, group).
activityGroup(skylift, family).
activityGroup(via_ferrata, group).
activityGroup(via_ferrata, family).
activityGroup(camping, group).
activityGroup(camping, family).
activityGroup(park, group).
activityGroup(park, family).
activityGroup(park, solo).
activityGroup(beach, solo).
activityGroup(beach, family).
activityGroup(beach, group).
activityGroup(church, group).
activityGroup(church, family).
activityGroup(church, solo).
activityGroup(opera_house, group).
activityGroup(opera_house, family).
activityGroup(opera_house, solo).
activityGroup(fortress, group).
activityGroup(fortress, family).
activityGroup(fortress, solo).
activityGroup(botanical_garden, group).
activityGroup(botanical_garden, family).
activityGroup(botanical_garden, solo).
activityGroup(seafood, group).
activityGroup(seafood, family).
activityGroup(seafood, solo).
activityGroup(pub, solo).
activityGroup(pub, group).
activityGroup(ferry, solo).
activityGroup(ferry, family).
activityGroup(ferry, group).
activityGroup(dogsled_tour, solo).
activityGroup(dogsled_tour, family).
activityGroup(dogsled_tour, group).
activityGroup(snow_mobiling, group).
activityGroup(ice_fishing, solo).
activityGroup(ice_fishing, family).
activityGroup(ice_fishing, group).
activityGroup(northern_lights, solo).
activityGroup(northern_lights, family).
activityGroup(northern_lights, group).
activityGroup(lighthouse, group).
activityGroup(lighthouse, solo).
activityGroup(lighthouse, family).

cityAttraction(geiranger, fjord_sightseeing).
cityAttraction(geiranger, fjord_cruise).
cityAttraction(geiranger, rafting).
cityAttraction(geiranger, kayaking).
cityAttraction(geiranger, hiking).

cityAttraction(loen , skylift).
cityAttraction(loen, via_ferrata).
cityAttraction(loen, camping).
cityAttraction(loen, fishing).
cityAttraction(loen, hiking).

cityAttraction(kristiansand, museum).
cityAttraction(kristiansand, zoo).
cityAttraction(kristiansand, church).
cityAttraction(kristiansand, beach).
cityAttraction(kristiansand, seafood).
cityAttraction(kristiansand, park).

cityAttraction(kragerø, museum).
cityAttraction(kragerø, fortress).
cityAttraction(kragerø, church).
cityAttraction(kragerø, lighthouse).
cityAttraction(kragerø, park).

cityAttraction(oslo , museum).
cityAttraction(oslo, opera_house).
cityAttraction(oslo, fortress).
cityAttraction(oslo, botanical_garden).

cityAttraction(trondheim, rafting).
cityAttraction(trondheim, church).
cityAttraction(trondheim, fjord_sightseeing).
cityAttraction(trondheim, cuisine).
cityAttraction(trondheim, pub).
cityAttraction(trondheim, ferry).
cityAttraction(trondheim, northern_lights).
cityAttraction(trondheim, fortress).
cityAttraction(trondheim, museum).
cityAttraction(trondheim, kayaking).

cityAttraction(kirkenes, northern_lights).
cityAttraction(kirkenes, dogsled_tour).
cityAttraction(kirkenes, snow_mobiling).
cityAttraction(kirkenes, ice_fishing).
cityAttraction(kirkenes, museum).

cityAttraction(stavanger, museum).
cityAttraction(stavanger, hiking).
cityAttraction(stavanger, beach).
cityAttraction(stavanger, seafood).
cityAttraction(stavanger, boathouse).
cityAttraction(stavanger, cuisine).
cityAttraction(stavanger, church).


/* REGRAS */

/*
Rule 1
  IF type of climate desired = cold
  AND type of activity = deep adventure
  THEN season = winter 
        danger level of attraction = high
*/
attractionSugestion(Attraction, cold, deepadventure) :- seasonAttraction(winter, Attraction), attractionDangerLevel(Attraction, high).

/*
Rule 2
  IF type of climate desired = cold
  AND type of activity = just sightseeing
  THEN season = winter 
        danger level of attraction = low
*/
attractionSugestion(Attraction, cold, sightseeing) :- seasonAttraction(winter, Attraction), attractionDangerLevel(Attraction, low).

/*
Rule 3
  IF type of climate desired = cold
  AND type of activity = sighseeing and a little outside high level adventures
  THEN season = winter 
        danger level of attraction = medium OR denger level of attraction = medium
*/
attractionSugestion(Attraction, cold, mediumexperience) :- seasonAttraction(winter, Attraction), attractionDangerLevel(Attraction, low), attractionDangerLevel(Attraction, medium).

/*
Rule 4
  IF type of climate desired = hot
  AND type of activity = deep adventure
  THEN season = summer 
        danger level of attraction = high
*/
attractionSugestion(Attraction, hot, deepadventure) :- seasonAttraction(summer, Attraction), attractionDangerLevel(Attraction, high).

/*
Rule 5
  IF type of climate desired = hot
  AND type of activity = just sightseeing
  THEN season = summer 
        danger level of attraction = low
*/
attractionSugestion(Attraction, hot, sightseeing) :- seasonAttraction(summer, Attraction), attractionDangerLevel(Attraction, low).

/*
Rule 6
  IF type of climate desired = hot
  AND type of activity = sighseeing and a little outside high level adventures
  THEN season = summer 
        danger level of attraction = low OR denger level of attraction = medium
*/
attractionSugestion(Attraction, hot, mediumexperience) :- seasonAttraction(summer, Attraction), attractionDangerLevel(Attraction, low), attractionDangerLevel(Attraction, medium).

/*
Rule 7
  IF type of climate desired = neither very cold nor very hot
  AND type of activity = deep adventure
  THEN season = sprint OR season = fall
        danger level of attraction = high
*/
attractionSugestion(Attraction, medium, deepadventure) :- seasonAttraction(fall, Attraction), attractionDangerLevel(Attraction, high).
attractionSugestion(Attraction, medium, deepadventure) :- seasonAttraction(spring, Attraction), attractionDangerLevel(Attraction, high).

/*
Rule 8
  IF type of climate desired = neither very cold nor very hot
  AND type of activity = just sightseeing
  THEN season = sprint OR season = fall
        danger level of attraction = low
*/
attractionSugestion(Attraction, medium, sightseeing) :- seasonAttraction(fall, Attraction), attractionDangerLevel(Attraction, low).
attractionSugestion(Attraction, medium, sightseeing) :- seasonAttraction(spring, Attraction), attractionDangerLevel(Attraction, low).

/*
Rule 9
  IF type of climate desired = hot
  AND type of activity = sighseeing and a little outside high le!.vel adventures
  THEN season = sprint OR season = fall
        danger level of attraction = low OR denger level of attraction = medium
*/
attractionSugestion(Attraction, medium, mediumexperience) :- seasonAttraction(fall, Attraction), attractionDangerLevel(Attraction, low), attractionDangerLevel(Attraction, medium).
attractionSugestion(Attraction, medium, mediumexperience) :- seasonAttraction(spring, Attraction), attractionDangerLevel(Attraction, low), attractionDangerLevel(Attraction, medium).


/*
Rule 10

Which are the attractions I can do in a specific city on a specific weather? 

  IF city = City AND season = Season:
    IF X is a city attraction
    AND X is a season attraction
    THEN X

Example:
checkCitySeasonAttraction(trondheim, summer, X).

*/
checkCitySeasonAttraction(City, Season, X) :- city(City), season(Season), attraction(X),
                                                    cityAttraction(City, X),  seasonAttraction(Season, X).


/*
Rule 11

Which are the attractions I can do with a certain group on a certain weather? 

  IF group = Group AND season = Season:
    IF X is a group attraction
    AND X is a season attraction
    THEN X

Example:
checkGroupSeasonAttraction(family, summer, X).

*/
checkGroupSeasonAttraction(Group, Season, X) :- attractionCategory(Group), season(Season), attraction(X),
                                                activityGroup(X, Group), seasonAttraction(Season, X).





/* 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                      %%    
%%    %%   %%    %%%%%%%%    %%%%%%%    %%
%%    %%   %%    %%          %%   %%    %%
%%    %%   %%    %%%%%%%%    %%   %%    %%
%%    %%   %%          %%    %%   %%    %%
%%    %%%%%%%    %%%%%%%%    %%%%%%%    %%
%%                                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


1. To request suggestions for attractions to visit, use the following command:

attractionSugestion(Attraction, <CLIMATE>, <TYPE>).

CLIMATE can be: cold, hot, medium
TYPE can be: deepadventure, sightseeing, mediumexperience




2. To check which are the attractions to go on a certain season in an specific city, type the following command:

checkCitySeasonAttraction(<CITY>, <SEASON>, X).

Where City can be: geiranger, loen, kristiansand, kragerø, oslo, trondheim, kirkenes, stavanger.

and Season can be: summer, fall, winter or spring.




3. Where can I see the northern lights, and in what season? What is the temperature average for the season? 

cityAttraction(X, northern_lights).
seasonAttraction(X, northern_lights).
seasonTemperature(season, X). 




4. What activities can I do with a family on the spring? 

checkGroupSeasonAttraction(family, summer, X).




If you want more than one suggestion, type ";" so the program will continue to suggest attractions!

*/





