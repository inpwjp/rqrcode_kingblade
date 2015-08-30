Class KbColors
  attr_accessor title
  attr_accessor kb_colors[]
  MaxLength=15
  def initializer(opts = [])
    kb_colors = Array.new()
    if opts[:title].presence?
      title = title
    end
  end

  def add_color(r = 0, g = 0, b = 0, v = 0)
    kb_color = KbColor.new(r,g,b,v)
  end
end
