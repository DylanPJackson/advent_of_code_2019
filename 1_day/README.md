# What I Learned from Star 1
Some of the absolute basics about R. That it really tries to be a vectorized
language. I can see why you'd want to use this for data processing. For this
first problem, it was extremely easy to calculate the fuel required for each 
of the 100 modules, all at once. 
1. How to read from a file
2. What a data frame is
3. How to use the R CLI
4. How to write .R files and run them 
5. A bit about how "printing" works in R and when running .R files

# What I Learned from Star 2
Ran into an interesting problem where I thought I could just vectorize the 
whole problem. By that I mean just write a recursive function that performs
some operation on each element of the data frame until all those new sums
are computed. The issue I ran into upon first submission was that the value
was too large. I tried to figure out why and realized it was because the 
recursive function would stop when any one of the elements met the conditional
I set, not when they all met the conditional. 
