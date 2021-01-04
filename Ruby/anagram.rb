def anagram(s)
  return -1 if (s.length % 2).positive?

  n = (s.length)/ 2
  str1 = s[0, n].chars
  str2 = s[-n, n].chars
  str_uniq = s.chars.uniq
  char_freq = Array.new(26,0)

  str1.each do |elem|
    freq_index = "#{elem}".ord - 'a'.ord
    char_freq[freq_index] += 1
  end

  str2.each do |elem|
    freq_index = "#{elem}".ord - 'a'.ord
    char_freq[freq_index] -= 1
  end

  char_changes = 0

  str_uniq.each do |elem|
    freq_index = "#{elem}".ord - 'a'.ord
    char_changes += char_freq[freq_index] if(char_freq[freq_index]) > 0
  end

  char_changes
end

p anagram('abccde')
p anagram('aaabbb')
p anagram('ab')
p anagram('abc')
p anagram('mnop')
p anagram('xyyx')
p anagram('xaxbbbxx')
p anagram('fdhlvosfpafhalll')
