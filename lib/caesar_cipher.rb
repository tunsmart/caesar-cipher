class CaesarCipher

    def caesar_cipher(string, shift_factor)
        return "Error! Shift factor cannot be greater than 25" if shift_factor > 25
        letters = ('a'..'z').to_a
        input_array = string.split('')
        output_array = create_output_array(input_array, shift_factor, letters)
    
        return output_array.join('')
        
    end

    private

    def is_Upcase? (chr)
        chr == chr.upcase
    end
    
    def return_new_letter (chr, new_letter)
        if is_Upcase?(chr)
            return new_letter.upcase
        else
            return new_letter
        end
    end
    
    def create_output_array(input_array, shift_factor, letters)
        arr = input_array.map do |chr|
            if chr.match?(/[[:alpha:]]/)
                new_letter_position = letters.index(chr.downcase) + shift_factor
                if new_letter_position > 25
                    new_letter_position2 = new_letter_position - 26
                    new_letter = letters[new_letter_position2]
                    return_new_letter(chr, new_letter)
                else
                    new_letter = letters[new_letter_position]
                    return_new_letter(chr, new_letter)
                end
            else
                chr
            end
        end
        return arr
    end
end


# caesar_cipher("I am Julius^ Ceasar^", 25)