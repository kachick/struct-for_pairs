struct-for_pairs
====================

[![Build Status](https://secure.travis-ci.org/kachick/struct-for_pairs.png)](http://travis-ci.org/kachick/struct-for_pairs)
[![Gem Version](https://badge.fury.io/rb/struct-for_pairs.png)](http://badge.fury.io/rb/struct-for_pairs)

Description
-----------

Struct will be able to constructed from key-value pairs.

Features
--------

* Pure Ruby :)

Usage
-----

### Build from Hash with Struct's Subclass

```ruby
require 'struct/for_pairs'

FooBar = Struct.new :foo, :bar

foobar = FooBar.for_pairs bar: 456, foo: 123
foobar.foo #=> 123
foobar.bar #=> 456
```

### And short cut with no named struct

```ruby
foobar = Struct.for_pairs foo: 123, bar: 456
foobar.foo #=> 123
foobar.bar #=> 456
```

### Alases

* `from_pairs`

Requirements
------------

* [Ruby 1.9.3 or later](http://travis-ci.org/#!/kachick/struct-for_pairs)

Install
-------

```bash
$ gem install struct-for_pairs
```

Link
----

* [Home](http://kachick.github.com/struct-for_pairs)
* [code](https://github.com/kachick/struct-for_pairs)
* [API](http://kachick.github.com/struct-for_pairs/yard/frames.html)
* [issues](https://github.com/kachick/struct-for_pairs/issues)
* [CI](http://travis-ci.org/#!/kachick/struct-for_pairs)
* [gem](https://rubygems.org/gems/struct-for_pairs)

License
-------

The MIT X11 License
Copyright (c) 2012 Kenichi Kamiya
See MIT-LICENSE for further details.
