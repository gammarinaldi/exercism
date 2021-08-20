class Clock
    attr_reader :minutes; protected :minutes
    MINUTES_IN_HOUR = 60
    MINUTES_IN_DAY = 1440

    def initialize(hour: 0, minute: 0)
      @minutes = time_to_minutes(hour, minute)
    end

    def time_to_minutes(hour, minute)
      (hour * MINUTES_IN_HOUR + minute) % MINUTES_IN_DAY
    end

    def to_s
      format_time(hour) + ':' + format_time(minute)
    end

    def format_time(time)
      time.to_s.rjust(2, "0")
    end

    def hour
      minutes / MINUTES_IN_HOUR
    end

    def minute
      minutes % MINUTES_IN_HOUR
    end

    def +(clock)
      Clock.new(minute: minutes + clock.minutes)
    end

    def -(clock)
      Clock.new(minute: minutes - clock.minutes)
    end

    def ==(clock)
      minutes == clock.minutes
    end
end