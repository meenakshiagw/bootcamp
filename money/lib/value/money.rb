# Money which can be expressed in Rupees or Paisa and I can add value to money.
class Money

  def initialize(rupee, paisa)
    @paisa = rupee * 100 + paisa
  end

  def rupee
    (@paisa / 100.0).round(2)
  end

  def paisa
    @paisa
  end

  def +(other)
    Money.new((rupee + other.rupee), 0)
  end

  def to_s
    (@paisa / 100).to_s + " rupees " + (@paisa % 100).to_s + " paisa" 
  end

  def ==(other)
    (rupee == other.rupee)
  end 

  def -(other)
    Money.new(rupee - other.rupee, 0)
  end

end