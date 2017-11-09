# Sequel at_time_zone extension

A Sequel extension that provides API for `AT TIME ZONE` SQL construct.

## Status

[![Gem Version](https://badge.fury.io/rb/sequel-at_time_zone.svg)](https://badge.fury.io/rb/sequel-at_time_zone)
[![Build Status](https://travis-ci.org/AlexWayfer/sequel-at_time_zone.svg?branch=master)](https://travis-ci.org/AlexWayfer/sequel-at_time_zone)
[![codecov](https://codecov.io/gh/AlexWayfer/sequel-at_time_zone/branch/master/graph/badge.svg)](https://codecov.io/gh/AlexWayfer/sequel-at_time_zone)
[![Maintainability](https://api.codeclimate.com/v1/badges/028925c1d38eca615ed7/maintainability)](https://codeclimate.com/github/AlexWayfer/sequel-at_time_zone/maintainability)
[![Dependency Status](https://gemnasium.com/badges/github.com/AlexWayfer/sequel-at_time_zone.svg)](https://gemnasium.com/github.com/AlexWayfer/sequel-at_time_zone)

## Installation

### Bundler

Add this line to your project's Gemfile:

```ruby
gem 'sequel-at_time_zone', require: 'sequel/extensions/at_time_zone'
```

And then execute:

```
$ bundle
```

### Manually

Install this gem as:

```
$ gem install sequel-at_time_zone
```

And then require it in your project:

```ruby
require 'sequel/extensions/at_time_zone'
```

## Usage

If you have database schema like this:

```ruby
create_table :items do
  primary_key :id
  column :created_at, DateTime
end
```

Then you can use it like this:

```ruby
Sequel.extension :at_time_zone

DB[:items].select { [created_at, created_at.at_time_zone('America/New_York')] }
# => SELECT created_at, created_at AT TIME ZONE 'America/New_York' FROM items
```

## Contributing

1.  Fork it
2.  Create your feature branch
3.  Commit your changes
4.  Push to the branch
5.  Create new Pull Request
