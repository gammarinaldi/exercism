class ListOps
    def self.arrays(a)
        return a.size
    end
    def self.reverser(a)
        return a.reverse
    end
    def self.concatter(a,b)
        return a.concat(b)
    end
    def self.mapper(a)
        s=[]
        a.each{|i|s<<(i+1)}
        return s
    end
    def self.filterer(a,&s)
        s=[]
        a.each{|i| s<<i if yield i}
        return s
    end
    def self.sum_reducer(a)
        sum=0
        a.each{|i| sum += i}
        return sum
    end
    def self.factorial_reducer(a)
        sum=1
        a.each{|i| sum *= i}
        return sum
    end
end