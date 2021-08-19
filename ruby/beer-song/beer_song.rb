class BeerSong
    def self.recite(bottles_number, verses_number)
        Array.new(verses_number).map {
            result = phrase(bottles_number)
            bottles_number -= 1
            result
        }.join("\n")
    end

    private

    def self.zero_bottles_phrase
        "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    def self.one_bottle_phrase
        "1 bottle of beer on the wall, 1 bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    end

    def self.phrase(bottles_number)
        return zero_bottles_phrase if bottles_number == 0
        return one_bottle_phrase if bottles_number == 1

        "#{bottles_number} bottles of beer on the wall, #{bottles_number} bottles of beer.\n" +
        "Take one down and pass it around, #{is_one_bottle(bottles_number-1)} of beer on the wall.\n"
    end

    def self.is_one_bottle(bottles_number)
        bottles_number == 1 ? '1 bottle' : "#{bottles_number} bottles"
    end
end