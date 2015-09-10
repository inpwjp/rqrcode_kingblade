require File.dirname(__FILE__) + '/kb_color.rb'
class KbColors
  attr_accessor :header
  attr_accessor :title
  attr_accessor :kb_colors


  def initialize(opts = {})
    @kb_colors = Array.new()
    @title = ""
    @header = "Copyright RU**AN"
    @max_length = 15
    if opts[:title]
      @title = opts[:title]
    end
  end

  def add_color(r = 0, g = 0, b = 0, v = 0, a = 0)
    if @kb_colors.length >= @max_length
      return false
    end
    kb_color = KbColor.new()
    kb_color.r = r % 256
    kb_color.g = g % 256
    kb_color.b = b % 256
    kb_color.v = v % 256
    kb_color.a = a % 256
    @kb_colors.push kb_color
    return @kb_colors.length
  end

  def set_title(tmp_title = "")
    @title = tmp_title
  end

  def delete_at(at)
    if at.nil? or at >= @kb_colors.length - 1
      return false
    end
    @kb_colors.delete_at at
    return self
  end

  def length()
    return @kb_colors.length
  end

  def to_s()
    s = ""
    s += @header.to_s + "\n"
    s += @title.to_s + "\n"
    if @kb_colors
      @kb_colors.each do |kb_color|
        s += kb_color.to_s + "\n"
      end
    end
    return s
  end
end
