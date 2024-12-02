
def caesar_ciper (string, shift = 1)
  #variable declarations and initialization of ciphertext
  alphabet_lowcase = ("a".."z").to_a
  alphabet_upcase = ("A".."Z").to_a
  numbers = ("0".."9").to_a
  ciphertext = "" 

#Checks each char of the string and find its new index
  string.each_char do |char|
    
  if alphabet_lowcase.include?(char)
      new_idx = (alphabet_lowcase.find_index(char) + shift) % alphabet_lowcase.count
      ciphertext += alphabet_lowcase[new_idx]
    
  elsif alphabet_upcase.include?(char)
      new_idx = (alphabet_upcase.find_index(char) + shift) % alphabet_upcase.count
      ciphertext += alphabet_upcase[new_idx]
    
  elsif numbers.include?(char)
      ciphertext += char

  else
      ciphertext += char
  end 
  end
  ciphertext
end
my_strings = gets.chomp
puts "Ciphertext: #{caesar_ciper(my_strings, 8)}"
