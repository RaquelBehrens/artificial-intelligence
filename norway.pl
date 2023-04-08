/* Cities */
city(geiranger).
city(loen).
city(kristiansand).
city(kragerø).
city(oslo).
city(trondheim).
city(kirkenes).
city(stavanger).

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
typeOfAttraction(family).
typeOfAttraction(solo).
typeOfAttraction(group).

/* Seasons */
season(summer).
season(winter).
season(fall).
season(spring).




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



/* 1. Which are the attractions to go on Winter in Geiranger? 

checkCitySeasonAttraction(geiranger, winter, X).

*/



/* 2. Which are the attractions I can do in Trondheim on the summer? 

checkCitySeasonAttraction(trondheim, summer, X).

*/

checkCitySeasonAttraction(City, Season, X) :- city(City), season(Season), attraction(X),
                                                    cityAttraction(City, X),  seasonAttraction(Season, X).


/* 3. Where can I see the northern lights, and in what season? What is the temperature average for the season? 

cityAttraction(X, northern_lights).
seasonAttraction(X, northern_lights).
seasonTemperature(season, X).
*/


/* 4. What activities can I do with a family on the spring? 

checkGroupSeasonAttraction(family, summer, X).

*/

checkGroupSeasonAttraction(Group, Season, X) :- typeOfAttraction(Group), season(Season), attraction(X),
                                                activityGroup(X, Group), seasonAttraction(Season, X).

