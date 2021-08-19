class Bob
  def self.hey(remark)
    return "Fine. Be that way!" if remark.scan(/\S/).empty?

    if question?(remark) && caps?(remark)
      "Calm down, I know what I'm doing!"
    elsif question?(remark)
      "Sure."
    elsif caps?(remark)
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end

  def self.caps?(str)
    str == str.upcase && str.scan(/[A-Z]/).any?
  end

  def self.question?(str)
    str.strip[-1] == "?"
  end
end