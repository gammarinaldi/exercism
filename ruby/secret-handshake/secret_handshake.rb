class SecretHandshake
    COMMANDS = [
      { code: 0b1, command: "wink" },
      { code: 0b10, command: "double blink" },
      { code: 0b100, command: "close your eyes" },
      { code: 0b1000, command: "jump" }
    ].freeze
    REVERSE = 0b10000

    def initialize(input)
      @input = input.to_i
    end

    def commands
      sequence = COMMANDS.each_with_object([]) do |hash, res|
        res << hash[:command] if @input & hash[:code] > 0
      end
      sequence.reverse! if @input & REVERSE > 0
      sequence
    end
  end