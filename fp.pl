/* 1. */
/*sum-up-numbers-simple(L, N).*/
/*sum-up-numbers-simple([],0])
sum-up-numbers-simple([Head|Tail], N) :-
	sum-up-numbers-simple(Tail, Tails),
	N is Tail + Tails.*/

sum-up-numbers-simple([], 0).
sum-up-numbers-simple([A|L], N) :-
   sum-up-numbers-simple(L, Rest),
   the_sum is L + Rest.




/* 2 */


/* 3 */




