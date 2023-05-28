pos(boss, 15, 15).
checking_cells.
resource_needed(1).

+my_pos(X, Y) 
   : checking_cells & not building_finished
   <- !check_for_resources.
   
//If wants resource R, but found S, and S is a future resource, then tell all agents that found a resource not needed
+!check_for_resources 
   : resource_needed(R) & found(S) & R < S & my_pos(X, Y)
   <- +resource_history(S, X, Y);
      .broadcast(tell, resource_history(S, X, Y));
   	  move_to(next_cell).

//If wants resource R, and has a record of resource R in certain location, go get resource and tell others
+!check_for_resources 
   : resource_needed(R) & resource(R, X, Y)
   <- !stop_checking;
      .broadcast(tell, resource(R, X, Y));
      !get_resource(R, X, Y);
      !continue_mine.

//If wants resource R, and has a record of history, go to get resource and tell others
+!check_for_resources 
   : resource_needed(R) & resource_history(R, X, Y)
   <- .broadcast(tell, resource(R, X, Y));
      .broadcast(untell, resource_history(R, X, Y));
      -resource_history(R, X, Y);
      !get_resource(R, X, Y).

//If wants a resource R, and found this R, start taking it and let the others know
+!check_for_resources 
   : resource_needed(R) & found(R) & my_pos(X, Y)
   <- !stop_checking;
      .broadcast(tell, resource(R, X, Y));
      !take(R, boss);
      !continue_mine.

//If is in it's place, but did not find resource, tell others that it is over
+!check_for_resources 
   : not found(R) & my_pos(X, Y) & my_res(R, X, Y)
   <- .broadcast(untell, resource(R, X, Y));
      .broadcast(untell, my_res(R, X, Y));
      .broadcast(untell, resource_history(R, X, Y));
      -resource_history(R, X, Y);
      -my_res(R, X, Y);
      -resource(R, X, Y);
      move_to(next_cell);
      !continue_mine.

//If is in a position, but no record of a resource in this position, and did not find anything, continue moving
+!check_for_resources 
   : my_pos(X, Y) & not my_res(R, X, Y)
   <- move_to(next_cell).
   
//Being notified that R is a resource needed, and has record of this resource, go get this resource
+resource_needed(R) 
   : resource(R, X, Y)
   <- !get_resource(R, X, Y).

//Being notified of a resource, and is neither after another resource nor is in the middle of something, get resource
+resource(R, X, Y) 
   : not my_res(_, _, _) & not pos(back, _, _) & checking_cells
   <- !get_resource(R, X, Y).
      
//If if not after another resource, go get the resource and record that is after a resource
+!get_resource(R, X, Y)
   : not my_res(_, _, _)
   <- +my_res(R, X, Y);
      // Agent stop checking
      !stop_checking;
      // Agent goes to resource
      !go(R, X, Y).
   
//Being notified that can exclude record of a resource, if has this record or is getting this resource in this location, stop doing so and go back to search
-resource(R, X, Y) 
   : resource(R, X, Y) | my_res(R, X, Y)
   <- .drop_desire(go(R, X, Y));
      .broadcast(untell, resource(R, X, Y));
   	  .broadcast(untell, my_res(R, X, Y));
   	  .broadcast(untell, resource_history(R, X, Y));
      -resource_history(R, X, Y);
   	  -resource(R, X, Y);
   	  -my_res(R, X, Y);
   	  !continue_mine.

//If has been told to go after a resource, and is in this position, and found this resource, take this to the boss and come back
+!go(R, X, Y) 
   : my_pos(X, Y) & found(R)
   <- !take(R, boss);
      !go(R, X, Y).

//If has been told to go after a resource, and is in this position, but did not find the resource, let the others know that the resource does not exist there
+!go(R, X, Y) 
   : my_pos(X, Y) & not found(R)
   <- .broadcast(untell, resource(R, X, Y));
   	  .broadcast(untell, my_res(R, X, Y));
   	  .broadcast(untell, resource_history(R, X, Y));
      -resource_history(R, X, Y);
   	  -resource(R, X, Y);
      -my_res(R, X, Y);
      !continue_mine.

//If has been told to go after a resource, and is not in the position yet, move towards this position and continue going
+!go(R, X, Y) : true
   <- move_towards(X, Y);
      !go(R, X, Y).

+!go(Position) 
   : pos(Position, X, Y) & my_pos(X, Y)
   <- true.

+!go(Position) : true
   <- ?pos(Position, X, Y);
      move_towards(X, Y);
      !go(Position).
      
      
+!stop_checking : not pos(back, _, _)
   <- ?my_pos(X, Y);
      +pos(back, X, Y);
      -checking_cells.
      
+!stop_checking : true
   <- .drop_desire(go(_));
      -checking_cells.

+!take(R, B) : true
   <- mine(R);
      !go(B);
      drop(R).

+!continue_mine : pos(back, X, Y)
   <- !go(back);
      -pos(back,X,Y);
      +checking_cells;
      !check_for_resources.
      
+!continue_mine : true
   <- +checking_cells;
      !check_for_resources.

@psf[atomic]
+!search_for(NewResource) 
   : resource_needed(OldResource)
   <- +resource_needed(NewResource);    
      -resource(OldResource, _, _);
      -resource_needed(OldResource).


@pbf[atomic]
+building_finished : true
   <- .drop_all_desires;
      !go(boss).