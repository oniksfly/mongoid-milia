# Mongoid::Milia

Provide `acts_as_tenant` method for [Mongoid](https://github.com/mongodb/mongoid) documents with [Milia](https://github.com/dsaronin/milia).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongoid-milia'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-milia

## Usage

Include this gem and add ```acts_as_tenant``` to models:

```ruby
class Post
  include Mongoid::Document
  include Mongoid::Milia
  acts_as_tenant
end

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/oniksfly/mongoid-milia. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

