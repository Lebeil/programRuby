#  Ta mission : créer une méthode caesar_cipher, 
#  dans un programme caesar_cipher.rb qui prend 
#  en paramètres un string et une clé de chiffrement 
#  (nombre de lettres à décaler) pour en sortir le string modifié.

 #convertir en ASCII: "e".ord 
 #convertir en lettre: 101.chr

def caesar_cipher plaintext, factor
  codepoints_array = []
  ciphertext = ""

  a_codepoint = 'a'.ord

  plaintext.split('').each do |letter|
    if letter =~ /[^a-zA-Z]/
      codepoints_array << letter.bytes.join('').to_i
    else
      shifted_codepoint = letter.downcase.bytes.join('').to_i + factor
      codepoints_array << (shifted_codepoint - a_codepoint) % 26 + a_codepoint
    end
  end
  ciphertext = codepoints_array.pack 'C*'
  ciphertext.capitalize
end

p caesar_cipher("What a string!",5)