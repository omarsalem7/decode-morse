MORSE_CODES={
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

def decode_char(char)
    return MORSE_CODES[char] unless MORSE_CODES[char].nil?
end

def decode_word(word)
    res= ''
    word.split(' ').each do |c|
        res=res.concat(decode_char(c))
    end
    return res
end

def decode(message)
    res=''
    message.split('   ').each do |w|
        res=res.concat(decode_word(w)+' ')
    end
    res.strip!
   return res
end
