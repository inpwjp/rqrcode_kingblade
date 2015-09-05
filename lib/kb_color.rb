class KbColor
  attr_accessor :r,:g,:b,:v,:a

  def initialize()
    @r = 0
    @g = 0
    @b = 0
    @v = 0
    @a = 0
  end

  def to_s()
    convert_s(@r) + convert_s(@g) + convert_s(@b) + convert_s(@v) + convert_s(@a)
  end

  def convert_s(x )
    x = x.to_s(16)
    if x.length == 1
      x = "0" + x.to_s
    end
    return x
  end
end
