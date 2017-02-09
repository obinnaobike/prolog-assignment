/* 1. */

sum-up-numbers-simple([], 0)./* base case if the list is empty return 0*/
sum-up-numbers-simple([A|L], N) :- number(N).
sum-up-numbers-simple([A|L], N) :- /* return the function recursively to add the tail end of the list */  
   sum-up-numbers-simple(L, Sum),
   N is A + Sum.
 




/* 2 */
sum-up-numbers-general([], 0). /* base case if the list is empty return 0*/
sum-up-numbers-general([A|L], N) :- /* return the function recursively to add the tail end of the list */
   number(N),
   number(A),
   number(L),
   sum-up-numbers-general(L, B),
   the_sum is L + B.


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


