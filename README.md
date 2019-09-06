# BalancePuzzle

This is a simple Scheme demonstration of the classic balance puzzle. If given six items, five of equal weight and one of lesser weight, one must find which item has the lesser weight with only two uses of a balance scale. 

I saw this problem and wanted to try out an implementation without looking at any solution. Using a functional approach clearly demonstrates the immutable nature of the item weights and the three different paths that must be considered for the second weigh depending on the outcome of the first. 

This can be tested in a Scheme interpreter by calling the find-lowest-weight function and giving five itentical weights and one lower weight in any position. The program will then output the position of the lower weight as follows:

==> (find-lowest-weight)
(5 2 5 5 5 5)

second

