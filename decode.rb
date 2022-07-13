MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  ' .--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  ' --..' => 'Z'
}

def decode_char(str)
  if MORSE_CODE.key?(str)
    MORSE_CODE[str]
  else 
    ''
  end
end


def decode_word(str)
  word = ''
  str.split(' ').each do |letter|
    word += MORSE_CODE[letter]
  end
  word 
end


def decode(str)
  message= ''
  str.split("   ").each do |word|
    message += "#{decode_word(word)} "
  end
  message
end

puts decode_char('-.')
puts decode_word('-- -.--')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')