
% Fact, 
byCar(ottawa,toronto).
byCar(ottawa,montreal).
byCar(quebec,toronto).
byCar(vancouver,victoria).

byTrain(ottawa,yellowknife).
byTrain(quebec,toronto).
byTrain(ottawa,calgary).
byTrain(ottawa,edmonton).
byTrain(ottawa,regina).
byTrain(ottawa,winnipeg).
byTrain(ottawa,halifax).
byTrain(victoria,toronto).
byTrain(victoria,montreal).
byTrain(halifax,toronto).

byPlane(ottawa,montreal).
byPlane(ottawa,quebec).
byPlane(toronto,newYork).
byPlane(toronto,losAngeles).
byPlane(montreal,paris).
byPlane(newYork,tokyo).
byPlane(montreal,newYork).





% •	Recursion and Prolog

travel(S,E) :- just_go(S,E).
travel(S,E) :- just_go(S,M), travel(M,E).


just_go(S,E) :- byCar(S,E).
just_go(S,E) :- byTrain(S,E).
just_go(S,E) :- byPlane(S,E).


% Maching

travel(S,E, go(S, E)) :- just_go(S,E).
travel(S,E, go(S, M, R)) :- just_go(S,M), travel(M,E,R).