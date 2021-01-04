def palindromeIndex(s, temp_store = {})
  #Check if string is a palindrome or has no solution
  return -1 if is_palindrome(s) || s.chars.length == s.chars.uniq.length

  # Determine the characters to remove
  ptr_l = 0
  ptr_r = s.length-1
  while ptr_l <= ptr_r
    temp_store = { :temp_str1 => s.clone , :temp_str2 => s.clone }
    if s[ptr_l] != s[ptr_r]
      temp_store[:temp_str1].slice!(ptr_l)
      temp_store[:temp_str2].slice!(ptr_r)
    end
    return ptr_l if is_palindrome(temp_store[:temp_str1])
       
    return ptr_r if is_palindrome(temp_store[:temp_str2])

    ptr_l += 1
    ptr_r -= 1
  end
end

# Palindrome
def is_palindrome(s)
  return false unless s == s.reverse
  true
end

# Test Cases
p palindromeIndex('aaab')
p palindromeIndex('baa')
p palindromeIndex('aaa')
p palindromeIndex('hgygsvlfcwnswtuhmyaljkqlqjjqlqkjlaymhutwsnwcwflvsgygh')