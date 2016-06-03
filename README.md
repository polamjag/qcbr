# Qcbr

[![Gem Version](https://badge.fury.io/rb/qcbr.svg)](https://badge.fury.io/rb/qcbr)
[![CircleCI](https://circleci.com/gh/polamjag/qcbr.svg?style=svg)](https://circleci.com/gh/polamjag/qcbr)

Qcbr is a small utility to send texts to [Quartz Composer](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Conceptual/QuartzComposerUserGuide/qc_intro/qc_intro.html)'s "Network Receiver" patch over UDP.

## Installation

Just execute

    $ gem install qcbr

## Usage

`qcbr` reads from and passes that to specified host and port. See `qcbr --help` for more details.

```
$ some-command-to-output-text | qcbr
```

Optionally you can use its API within your Ruby code:

```ruby
require 'qcbr'

Qcbr.encode_text 'foo' # just encodes to Network Receiver's format
Qcbr.send 'bar', '225.0.0.0', 50000
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/polamjag/qcbr


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

