# frozen_string_literal: true

def decode_morse_code(morse_code, morse_code_table)
  morse_code_words = split_morse_code(morse_code)
  decoded = build_decoded_message(morse_code_words, morse_code_table)
  decoded
end

def split_morse_code(morse_code)
  morse_code.split('   ')
end

def lookup_character(morse_char, morse_code_table)
  morse_code_table[morse_char]
end
