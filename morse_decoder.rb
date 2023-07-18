# retuns a char or space if morse code is not found
def morse_decoder(morse)
  # morse code to char
  morse_to_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_to_char[morse] || ' '
end

# decode the word witout spaces
def decode_word(word)
  word.split.map { |morse| morse_decoder(morse) }.join
end

# transfor the 3 spaces to 1 space and decode the message.
def decode_message(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end

# write your morse code here
message = '  .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_message(message)

puts decoded_message
