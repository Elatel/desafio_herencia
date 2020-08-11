class Appointment
    attr_accessor :location,:purpuse, :hour, :min
    def initialize(location, purpuse, hour, min)
        @location = location
        @purpuse = purpuse
        @hour = hour
        @min = min 
    end
end

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpuse, hour, min, day)
        super(location, purpuse, hour, min)
        @day = day
    end
    
    def occurs_on(day)
        @day == day
    end

    def to_s()
        puts "Reunión mensual en #{@location} sobre #{@purpuse} el día #{@day} a la(s) #{hour}:#{min}."
    end

end

puts MonthlyAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4).to_s

class DailyAppoiment < Appointment
    def to_s()
        puts "Reunión diaria en #{@location} sobre #{@purpuse} a la(s) #{hour}:#{min}."
    end

    def occurs_on?(hour,min)
        @hour == hour && @min == min
    end
end

puts DailyAppoiment.new('Desafío Latam', 'Trabajo', 14, 30).occurs_on?(14,30)

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpuse, hour, min, day, month, year)
        super(location, purpuse, hour, min)
        @day = day 
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        @day == day && @month == month && @year == year
    end

    def to_s
        puts "Reunión mensual en #{@location} sobre #{@purpuse} el día #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."
    end
end

puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6 ,2019).to_s