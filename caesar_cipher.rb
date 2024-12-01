
def caesar_ciper (string, shift = 1)
  #variable declarations and initialization of ciphertext
  alphabet_lowcase = ("a".."z").to_a
  alphabet_upcase = ("A".."Z").to_a
  punctuation = (33..47).to_a + (58..64).to_a + (91..96).to_a + (123..126).to_a
  numbers = ("0".."9").to_a
  ciphertext = "" 

#Checks each char of the string and find its new index
  string.each_char do |char|
    if char == " "
        ciphertext += " "

    elsif alphabet_lowcase.include?(char)
      new_idx = (alphabet_lowcase.find_index(char) + shift) % alphabet_lowcase.count
      ciphertext += alphabet_lowcase[new_idx]
    
    elsif alphabet_upcase.include?(char)
      new_idx = (alphabet_upcase.find_index(char) + shift) % alphabet_upcase.count
      ciphertext += alphabet_upcase[new_idx]
    
    elsif punctuation.include?(char.ord) || numbers.include?(char)
      ciphertext += char

    else
      ciphertext += char
    end 
  end
  puts ciphertext
end
caesar_ciper("Aljun", 7)