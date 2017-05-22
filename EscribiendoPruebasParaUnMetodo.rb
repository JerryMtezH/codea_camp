def caesar_cipher(original_text, rotate_number)
  original_alphabet = "abcdefghijklmnopqrstuvwxyz"
  cipher_text = ""
  original_text.split("").each do |letter|
    if "?.,! ".include?(letter)
      cipher_text << letter
    else
      cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
      if letter == letter.upcase
        cipher_text << cipher_alphabet.upcase
      else
        cipher_text << cipher_alphabet
      end
    end
  end
  cipher_text
end
p caesar_cipher("Gerardo Martinez",1) == "Hfsbsep Nbsujofa"
p caesar_cipher("Gerardo Martinez",2) == "Igtctfq Octvkpgb"
p caesar_cipher("Gerardo Martinez",3) == "Jhudugr Pduwlqhc"
p caesar_cipher("Gerardo Martinez",4) == "Kivevhs Qevxmrid"
p caesar_cipher("Hfsbsep Nbsujofa",-1) == "Gerardo Martinez"
p caesar_cipher("Igtctfq Octvkpgb",-2) == "Gerardo Martinez"
p caesar_cipher("Jhudugr Pduwlqhc",-3) == "Gerardo Martinez"
p caesar_cipher("Kivevhs Qevxmrid",-4) == "Gerardo Martinez"