/* 1. */

sum-up-numbers-simple([], 0)./* base case if the list is empty return 0*/
sum-up-numbers-simple([A|L], N) :- number(N).
sum-up-numbers-simple([A|L], N) :- /* return the function recursively to add the tail end of the list */  
   sum-up-numbers-simple(L, Sum),
   N is A + Sum.
 




/* 2 */
sum-up-numbers-general([],0). /* base case empty list = 0 */
sum-up-numbers-general([B|L], N) :- sum-up-numbers-general(B, N1), 
sum-up-numbers-general(L, N3),
N is N1 + N3. /* recursively call the function */



/* 3 */
min-above-min(L1, L2, N):-
	listlength(L2, Length),
	Length <= 1,
	min_in_list(L1, N).



/ * 4 */
common-unique-elements([],[],[]).
common-unique-elements([A|L1], L2, [A|B]) :-
member(L2,A),!,common-unique-elements(L1,L2,B).
common-unique-elements([_|L1], L2, B):-
    common-unique-elements(L1,L2,B).
member([A|_],A).
member([_|C], A):- member(C,A).


