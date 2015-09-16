class Time

  attr_accessor :hours, :minutes, :seconds
  # Initialize a single clock time instance
  def initialize (hours, minutes, seconds)

    @hours = 0
    @minutes = 0
    @seconds = 0

  end

  def set (h, m, s)

    if (h.is_a?(Fixnum) == false || h < 0 || h > 23)
      puts "Error with hours, must be number tween 0 and 23"
    else
      @hours = h
    end

    if (m.is_a?(Fixnum) == false || m < 0 || m > 60)
      puts "Error with seconds, must be number tween 0 and 60"
    else
      @minutes = m
    end

    if (s.is_a?(Fixnum) == false || s < 0 || s > 60)
      puts "Error with hours, must be number tween 0 and 60"
    else
      @seconds = s
    end



  end


  # print out the time in the format: 1:23:56
  def print

    # puts "#{@hours}:#{@minutes}:#{@seconds}"
    h = @hours
    m = @minutes
    s = @seconds



    if h < 10
      h = "0#{h}"
    else
      h
    end

    if m < 10
      m = "0#{m}"
    else
      m
    end

    if s < 10
      s = "0#{s}"
    else
      s
    end

    puts "#{h}:#{m}:#{s}"


  end

  def advance

    if(@hours == 23 && @minutes == 59 && @seconds == 59)
      @hours = 0
      @minutes = 0
      @seconds = 0


    elsif(@hours < 23 && @minutes == 59 && @seconds == 59)
      @hours += 1
      @minutes = 0
      @seconds = 0

    elsif(@hours < 23 && @minutes < 59 && @seconds == 59)
      @hours
      @minutes += 1
      @seconds = 0

    else
      @hours
      @minutes
      @seconds += 1
  end

  end

end

puts "Enter your new time: hours"

h = gets.to_i

puts "Enter your new time: minutes"

m = gets.to_i

puts "Enter your new time: seconds"

s = gets.to_i

timer = Time.new(h, m, s)

timer.set(h, m, s)

timer.print

timer.advance

timer.print

