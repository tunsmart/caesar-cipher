require './lib/caesar_cipher'

describe CaesarCipher do
    before { @cipher = CaesarCipher.new}
    describe "error situation" do
        it "returns error when shift factor is greater than 25" do
            expect(@cipher.caesar_cipher("I am Julius^ Ceasar^", 26)).to eql("Error! Shift factor cannot be greater than 25")
        end
    end

    describe "common situation" do
        it "returns the correct cipher" do
            expect(@cipher.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
        end

        it "returns the correct cipher even when the letter is at the end of the alphabet series" do
            expect(@cipher.caesar_cipher("What a stringz!", 5)).to eql("Bmfy f xywnsle!")
        end
    end
end