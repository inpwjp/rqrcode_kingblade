# RqrcodeKingblade

This gem can make qrcode file for kingbladeIII(infinity)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rqrcode_kingblade'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rqrcode_kingblade

## Usage

Initialize class

rqr_kb = RqrcoreKingblade::RqrcodeKingblade.new

Add title.

```ruby
rqr_kb.title = "title hoge"
```

Add color data.
Format is RGBdata plus brightness(v).

```ruby
rqr_kb.add_color(r = 0,g = 100 ,b = 150, brightness = 140, 0)
```

Set the name of the file to be output

```ruby
rqr_kb.filename = "filename.png"
```

You want to output the file of the QR code.

```ruby
rqr_kb.to_qrcode
```

You want to output the image data of png format.

```ruby
rqr_kb.to_img
```

