pos(boss, 15, 15).
checking_cells.
resource_needed(1).
is_collecting.


+my_pos(X, Y) 
   : checking_cells & not building_finished
   <- !check_for_resources.
   
   
+!check_for_resources 
   : resource_needed(R) & found(S) & R \== S & my_pos(X, Y)
   <- //Telling all agents It found resource not nedded, sending place and which resource
      +resource_history(X, Y, S);
      .broadcast(tell, resource_history(X, Y, S));
   	  move_to(next_cell).
   	  
+resource_history(X, Y, R) : true
   // Manda agente para a posição X, Y onde o recurso foi encontrado
   <- true.


+!check_for_resources 
   : resource_needed(R) & found(R) & my_pos(X, Y) & not my_res(R, X, Y)
   <- !stop_checking;
      //Telling all agents It found resource needed, sending place and which resource
      .println("Resource needed at X Y: ", X, " ", Y);
      .broadcast(tell, resource(X, Y, R));
      +my_res(R, X, Y);
      !take(R, boss);
      !continue_mine.
      
+!check_for_resources 
   : resource_needed(R) & found(R) & my_pos(X, Y) & my_res(R, X, Y)
   <- !stop_checking;
      //Telling all agents It found resource needed, sending place and which resource
      .println("Resource needed at X Y: ", X, " ", Y);
      .broadcast(tell, resource(X, Y, R));
      !take(R, boss);
      !continue_mine.

+!check_for_resources 
   : resource_needed(R) & not found(R) & my_pos(X, Y) & my_res(R, X, Y)
   <- // Avisa que recurso não foi mais encontrado, passando local e o recurso, para todos os agentes
      .broadcast(untell, resource(X, Y, R));
      move_to(next_cell);
      -my_res(R, X, Y).
      
+!check_for_resources 
   : resource_needed(R) & not found(R) & my_pos(X, Y) & not my_res(R, X, Y)
   <- move_to(next_cell).


+resource(X, Y, R) 
   : not my_res(_, _, _)
   <- .println("Going to get resource found by another at X Y: ", X, " ", Y);
      .println("The resource type is: ", R);
      .wait(250);
      !get_resource(X, Y, R).
      
+!get_resource(X, Y, R)
   : not my_res(_, _, _)
   <- // Agent stop checking
      !stop_checking;
      // Agent goes to resource
      +my_res(X, Y, R);
      !go(X, Y, R).

+resource_needed(R) 
   : resource(X, Y, R)
   <- !go(X, Y).
   
-resource(X, Y, R) 
   : resource(X, Y, R) | my_res(X, Y, R)
   <- .drop_desire(go(X,Y,R));
   	  -resource(X, Y, R);
   	  -my_res(X, Y, R);
   	  !continue_mine.

//Agent reaches resource and has this resource in history, that means, got the information by another
+!go(X, Y, R) 
   : my_pos(X, Y) & found(R) & resource(X, Y, R)
   <- !take(R, boss);
      !go(X, Y, R).

//Agent reaches resource and has this resource in history, that means, got the information by another
+!go(X, Y, R) 
   : my_pos(X, Y) & not found(R) & resource(X, Y, R)
   <- // Avisa que recurso não foi mais encontrado, passando local e o recurso, para todos os agentes
      .broadcast(untell, resource(X, Y, R));
   	  -resource(X, Y, R);
      -my_res(X, Y, R);
      !continue_mine.

//Go to resource until finds it
+!go(X, Y, R) : true
   <- .println("Going towards resource at X Y: ", X, " ", Y);
      move_towards(X, Y);
      !go(X, Y, R).

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
      
+!continue_mine 
   : resource_needed(R) & resource_history(X, Y, R)
   <- !go(back);
      -pos(back,X,Y);
      +checking_cells;
      !go(X, Y, R);
      -resource_history(X, Y, R);
      !check_for_resources.

+!continue_mine : true
   <- !go(back);
      -pos(back,X,Y);
      +checking_cells;
      !check_for_resources.

@psf[atomic]
+!search_for(NewResource) 
   : resource_needed(OldResource)
   <- +resource_needed(NewResource);    
      -resource(_, _, OldResource);
      -resource_needed(OldResource).


@pbf[atomic]
+building_finished : true
   <- .drop_all_desires;
      !go(boss).