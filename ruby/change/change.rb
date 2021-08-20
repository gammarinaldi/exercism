module Change
    def self.generate(coins, val)
        raise NegativeTargetError if val < 0
        return [] if val == 0
        coins = coins.select{|coin| coin <= val}
        t = 1
        while t <= val
            res = coins.repeated_combination(t).find {|item| item.sum == val}
            return res if !res.nil?
            t += 1
        end

        raise ImpossibleCombinationError
    end

    class ImpossibleCombinationError < StandardError; end
    class NegativeTargetError < StandardError; end
end