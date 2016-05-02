# pq-unlogged

`pg-unlogged` allows you to create fast tables in PostgresSQL without logging: http://www.postgresql.org/docs/current/static/non-durability.html

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pq-unlogged', group: [:development, :test]
```

And then execute:

    $ bundle

## Usage

Provide 'unlogged' environment variable while preparing test DB:

```
unlogged=true rake db:test:prepare
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/desofto/pq-unlogged


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

