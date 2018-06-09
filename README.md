# Quad Tile

Gem bundle of native C extensions to `QuadTile` module from [openstreetmap](https://github.com/openstreetmap/openstreetmap-website)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quad_tile'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quad_tile

## Usage

This primary functions from C exposed to the `QuadTile` module in ruby are `.tile_for_point` and `tiles_for_area`.

```ruby

QuadTile.tile_for_point(51.0, 1.0)
#=> 3493907048

# Build an object with min_lon, min_lat, max_lon, max_lon instance varialbes. In OSM
# this is an instance of BoundingBox
box = BoundingBox.new(min_lon: 0.99, min_lat: 50.99, max_lon: 1.01, max_lat: 51.01)

QuadTile.tiles_for_area(box)
#=> [3493906992, 3493906993, 3493906996, 3493906997, 3493907040, 3493907041, 3493907044, 3493907045, 3493906994, 3493906995, 3493906998, 3493906999, 3493907042, 3493907043, 3493907046, 3493907047, 3493907000, 3493907001, 3493907004, 3493907005, 3493907048, 3493907049, 3493907052, 3493907053, 3493907002, 3493907003, 3493907006, 3493907007, 3493907050, 3493907051, 3493907054, 3493907055]

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rubyforgood/quad_tile. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [GPLv2 License](http://opensource.org/licenses/GPL-2.0).

## Code of Conduct

Everyone interacting in the Quad Tile project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rubyforgood/quad_tile/bextextlob/master/CODE_OF_CONDUCT.md).

Made with :heart: at [Ruby for Good](https://rubyforgood.org/)
