/* 1. */

sum-up-numbers-simple([], 0). /* base case if the list is empty return 0*/
sum-up-numbers-simple([A|L], N) :- /* return the function recursively to add the tail end of the list */
   number(N),
   number(A),
   number(L),
   sum-up-numbers-simple(L, B),
   the_sum is L + B.




/* 2 */
sum-up-numbers-general([], 0). /* base case if the list is empty return 0*/
sum-up-numbers-general([A|L], N) :- /* return the function recursively to add the tail end of the list */
   number(N),
   number(A),
   number(L),
   sum-up-numbers-general(L, B),
   the_sum is L + B.


/* 3 */



/ * 4 */
common-unique-elements([],[],[]).
common-unique-elements([A|L1], L2, [A|B]) :-
member(L2,A),!,common-unique-elements(L1,L2,B).
common-unique-elements([_|L1], L2, B):-
    common-unique-elements(L1,L2,B).

