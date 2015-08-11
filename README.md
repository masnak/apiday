# Apiday

This is a demo ruby gem on AIIT enpit project 2015.

## Requirement

This gem use 'wikipedia-client'.
```ruby
gem 'wikipedia-client'
```

You need to change wikipedia.rb as follows.
```ruby
.rbenv/versions/X.X.X/lib/ruby/gems/X.X.X/gems/wikipedia-client-X.X.X/lib/wikipedia.rb
 Configure {
   protocol  'https'
   domain    'jp.wikipedia.org'  # -> 'en.wikipedia.org'
   path      'w/api.php'
   user_agent(
     'wikipedia-client/1.3 (https://github.com/kenpratt/wikipedia-client)'
   )
 }
 ```
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiday'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apiday

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/apiday. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
