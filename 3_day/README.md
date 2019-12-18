# What I Learned from Star 5
1. Strings in R are weird. Or at least turning your vectors into strings is a 
little awkward.
2. I still don't entirely understand how lists are structured and how you
index into them.

## My Approach
###### Naive
My first thought was a very naive approach just so I could get something down
on paper that worked. This was to initialize two tuples which would hold the 
coordinates of each of the two wires. They would start at (0,0), which I 
assumed would be the central port. Then, I would read in a direction for
each of the wires. I would then update each tuple one cell at a time, until
each of them traversed the distance they were meant to. At each update, I would
check to see if the coordinates were equal. An equality of their coordinates
would imply that they crossed at that point. If they intersected, I would check
to see if this intersection's Manhattan distance was shorter than the previous
intersection. In this manner, I would essentially traverse each wire in tandum
with each update, checking at each step if they intersected. This is most
likely the least efficient implementation of this problem, as it would make a
comparison for every single cell that the two wires occupy. While this would 
only result in O(n) complexity, it still seemed way too exhaustive and I was
sure I could implement something that did not have to check every single cell
of the two wires. 

###### Less Naive, but probably more complicated
So, I thought I had something that would work, but it might just be an 
overcomplication of an originally simple problem. I'll document it later, 
going to work on another project.
