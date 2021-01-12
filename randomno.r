# Generating Pseudo Random numbers using Linear Congruential Generator (LCG)
# This code is in R langauge

# LCG uses a seed to produce the first number and then uses it to produce the second.
# The second is used to produce the third and so on... The equation goes ->

#       Xi = (aX(i-1) + c)mod m,   where a is a multiplier, c is a shift, and m is modulus

# The numbers will always be between 0 and (m-1)
# There	is	generation of uniformly distributed random numbers

lcg	<- function(a, c, m, run.length, seed)	{
		x	<- rep(0:run.length)    # Generates sequence 0 to 50 and stores in 'x'
		x[1]	<- seed     # First number in the sequence is the seed input by user
		for	(i	in	1:(run.length-1))	{
				x[i+1]	<- (a*x[i] + c)	%%	m   # values generated in accordance to LCG equation
		}
		return(list(x=x))
}

res=lcg(1,3,100,50,25) # You can modify function parameters to generate different sequences
res
