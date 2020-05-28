require "rqrcode_kingblade/version"
require File.dirname(__FILE__) + '/kb_colors.rb'
require 'rqrcode_png'

module RqrcodeKingblade
  class RqrcodeKingblade
    attr_accessor :filename
    def initialize
      @kb_colors = KbColors.new
      @kb_colors.title = "test"
      @kb_version = "KBX3"
      @filename = "test.png"
    end

    def title(title)
      @kb_colors.title = title
    end
    
    def add_color(r = 0, g = 0, b = 0, v = 0, a = 0)
      @kb_colors.add_color(r,g,b,v,a)
    end

    def to_qrcode
      qr = RQRCode::QRCode.new(@kb_colors.to_s, :size => 14 , :level => 'h')
      png = qr.to_img
      png.resize(360,360).save(@filename)
    end

    def to_img
      RQRCode::QRCode.new(@kb_colors.to_s, :size => 14 , :level => 'h').as_img
    end

    def to_svg
      RQRCode::QRCode.new(@kb_colors.to_s, :size => 14 , :level => 'h').as_svg
    end
  end
      
  # Your code goes here...
end
