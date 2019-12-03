# Teber

Teber Library gem is to have all the common methods that will be used in functional UI automation. 

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Made with Ruby](https://img.shields.io/badge/Made%20with-Ruby-red.svg)](https://www.ruby-lang.org/en/)
[![StackOverflow](http://img.shields.io/badge/Stack%20Overflow-Ask-blue.svg)]( https://stackoverflow.com/users/10505289/naresh-sekar )
[![Contributions Welcome](https://img.shields.io/badge/Contributions-Welcome-brightgreen.svg)](CONTRIBUTING.md)
[![email me](https://img.shields.io/badge/Contact-Email-green.svg)](nareshnavinash@gmail.com)
[![Gem Version](https://badge.fury.io/rb/teber-library.svg)](https://rubygems.org/gems/teber-library)


![alt text](lib/teber/Teber-Library-Gem.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'teber-library'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install teber-library

## Usage

This gem is to replace the library methods in [Teber-Ruby](https://github.com/nareshnavinash/Teber-Ruby) framework. This allows us to share the methods among different teams and completely ignore the repetitive work. For more details on Page object model for functional UI automation verify [Teber Ruby Documentation](https://nareshnavinash.github.io/Teber-Ruby/) page.

### Adding new methods

Add all the new methods inside /lib/teber/ path with the module name as 'Teber'. If added a new file, include the newly added file to the /lib/teber/teber.rb so that those methods will be available when we use the gem.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nareshnavinash/Teber-Gem/. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Authors

* **[Naresh Sekar](https://github.com/nareshnavinash)**

## License

The gem is available as open source under the terms of the [GPL-3.0 License](https://opensource.org/licenses/GPL-3.0).

## Code of Conduct

Everyone interacting in the Teber project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nareshnavinash/Teber-Gem/blob/master/CODE_OF_CONDUCT.md).
