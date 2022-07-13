% csc240 examples



justAte(frog,mosquito).
justAte(stork,frog).

isDigesting(X,Y):- justAte(X,Y). % base case rule 
isDigesting(X,Y):- justAte(X,Z),isDigesting(Z,Y). % recurisve case 


% facts 
isTaller(bob,mike). 
isTaller(mike,jim). 
isTaller(jim,george). 

% if they are taller rules 
areTheyTaller(X,Y):-isTaller(X,Y),!. % base rule if we find face stack swindle
areTheyTaller(X,Y):-isTaller(X,Z),areTheyTaller(Z,Y). % recursive case if X is bigger than Y and X is bigger and Z is bigger than Y therefore X is bigger than Y 


% facts of the towns
link(town1,town2).
link(town2,town3).
link(town3,town4).
link(town4,town5).
link(town5,town6).

% rules 
can_get(X,Y):-link(X,Y),!. %base case if we link or not return
can_get(X,Y):-link(X,Z),can_get(Z,Y). % recusive case if X-Y is true and X-Z is true and Z-Y is true then X-Y is true 


% fact
fact(0,1). % if variables is 0 return 1 
fact(X,Result):-X > 0, % if n > 0
    N1 is X - 1, % N1 = X - 1 
    fact(N1,F1), 
    Result is F1 * X. 