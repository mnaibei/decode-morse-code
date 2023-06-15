# frozen_string_literal: true

def decode_morse_code(morse_code, morse_code_table)
  morse_code_words = split_morse_code(morse_code)
  build_decoded_message(morse_code_words, morse_code_table)
end

def split_morse_code(morse_code)
  morse_code.split('   ')
end

def lookup_character(morse_char, morse_code_table)
  morse_code_table[morse_char]
end

def build_decoded_message(morse_code_words, morse_code_table)
  decoded = ''
  morse_code_words.each do |morse_word|
    morse_chars = morse_word.split
    morse_chars.each do |morse_char|
      letter = lookup_character(morse_char, morse_code_table)
      decoded += letter unless letter.nil?
    end
    decoded += ' '
  end
  decoded.rstrip
end

morse_code_table = {
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

morse_string_one = '-- -.--   -. .- -- .'
decoded = decode_morse_code(morse_string_one, morse_code_table)
puts decoded

morse_string_two = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded = decode_morse_code(morse_string_two, morse_code_table)
puts decoded
