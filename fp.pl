/* 1. */

sum-up-numbers-simple([], 0). /* base case if the list is empty return 0*/
sum-up-numbers-simple([A|L], N) :- /* return the function recursively to add the tail end of the list */
   sum-up-numbers-simple(L, B),
   the_sum is L + B.




/* 2 */


/* 3 */




