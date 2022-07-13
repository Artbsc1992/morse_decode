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
puts decode_char('-.')

def decode_word(str)
  word = ''
  str.split(' ').each do |letter|
    word += MORSE_CODE[letter]
  end
  word 
end
puts decode_word('-- -.--')