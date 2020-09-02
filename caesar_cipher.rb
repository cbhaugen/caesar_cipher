def cipher(message, shift)
  new_message = []
  codes = message.chars.map(&:ord)

  new_message << codes.map do |character|
    if character.between?(97, 122)
      (character + shift > 122? (character + shift)-26 : (character + shift)).chr
    elsif character.between?(65, 90)
      (character + shift > 90? (character + shift)-26 : (character + shift)).chr
    else
      character.chr
    end
  end
  new_message.join
end

p cipher("Hello, this is a test!", 5)
