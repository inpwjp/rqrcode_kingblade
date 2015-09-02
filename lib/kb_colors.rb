Class KbColors
  attr_accessor header
  attr_accessor title
  attr_accessor kb_colors[]
  MaxLength=15

  def initializer(opts = [])
    kb_colors = Array.new()
    if opts[:title].presence?
      title = title
    end
    header = "Copyright RUIFAN"
  end

  def add_color(r = 0, g = 0, b = 0, v = 0)
    if kb_colors.length >= MaxLength
      return false
    end
    kb_color = KbColor.new(r,g,b,v)
    kb_colors.push kb_color
    return kb_colors.length
  end

  def set_title(tmp_title = "")
    title = tmp_title
  end

  def delete_at(at)
    if at.nil? or at >= kb_colors.length - 1
      return false
    end
    kb_colors.delete_at at
    return self
  end

  def length()
    return kb_colors.length
  end
end
