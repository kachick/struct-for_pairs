struct-for_pairs
====================

Struct will be construct from key-value pairs.

Features
--------

* Not "OpenStruct"
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

Requirements
------------

* Ruby - [1.9.2 or later](http://travis-ci.org/#!/kachick/struct-for_pairs)

Install
-------

```bash
$ gem install struct-for_pairs
```

Link
----

* [code](https://github.com/kachick/struct-for_pairs)
* [API](http://kachick.github.com/struct-for_pairs/yard/frames.html)
* [issues](https://github.com/kachick/struct-for_pairs/issues)
* [CI](http://travis-ci.org/#!/kachick/struct-for_pairs)
* [gem](https://rubygems.org/gems/struct-for_pairs)

License
-------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See the file LICENSE for further details.
