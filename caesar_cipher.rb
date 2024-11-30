
def caesar_ciper (string, shift = 1)
  #variable declarations and initialization of ciphertext
  alphabet_lowcase = ("a".."z").to_a
  alphabet_upcase = ("A".."Z").to_a
  punctuation = (33..47).to_a + (58..64).to_a + (91..96).to_a + (123..126).to_a
  numbers = ("0".."9").to_a
  ciphertext = "" 

#Checks each char of the string and find its current index
  string.each_char do |char|
    if char == " "
        ciphertext += " "

    elsif alphabet_lowcase.include?(char)
      old_idx_lowcase = alphabet_lowcase.find_index(char)
      new_idx_lowcase = (old_idx_lowcase + shift) % alphabet_lowcase.count
      ciphertext += alphabet_lowcase[new_idx_lowcase]
    
    elsif alphabet_upcase.include?(char)
      old_idx_upcase = alphabet_upcase.find_index(char)
      new_idx_upcase = (old_idx_upcase + shift) % alphabet_upcase.count
      ciphertext += alphabet_upcase[new_idx_upcase]
    
    elsif punctuation.include?(char.ord) || numbers.include?(char)
      ciphertext += char

    else
      ciphertext += char
    end 
  end
  puts ciphertext
end
caesar_ciper("sd#sdas#+-=_*%", 7)