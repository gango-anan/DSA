s = 'a'
n = 1000000000000
len = s.length
# Determine the number of a's in the original string
counter = 0
len.times { |i| counter += 1 if s[i] == 'a' }

# Determine the number of a's in n characters
count_a = counter*(n/len)

# Determine the number of a's in the extra characters and compute the total number of a's

(n%len).times { |j| count_a += 1 if(s[j]=='a') }

#Compute the total number of a's
puts count_a
