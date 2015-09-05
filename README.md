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

initialize class

rqr_kb = RqrcoreKingblade::RqrcodeKingblade.new

add title.

```ruby
rqr_kb.title = "title hoge"
```

add color data
format is RGBdata plus brightness(v).

```ruby
rqr_kb.add_color(r = 0,g = 100 ,b = 150, brightness = 140, 0)
```
set filename which is maked png data.

```ruby
rqr_kb.filename = "filename.png"
```

make qrcode file.

```ruby
rqr_kb.to_qrcode
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rqrcode_kingblade/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
