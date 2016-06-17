## ShellGongeek

简化方便操作一些常用linux命令的ruby脚本

目前支持: 

    1. sr pk 3000 (删除占用3000端口的所有程序)
    2. sr pl 3000 (等价于 lsof -i:3000)

后续考虑以自己实用出发添加相应命令

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shell_gongeek'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shell_gongeek

## Usage

目前支持: 

    1. sr pk 3000 (删除占用3000端口的所有程序)
    2. sr pl 3000 (等价于 lsof -i:3000)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gongeek/shell_gongeek.

