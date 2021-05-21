struct-for_pairs
====================

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org for releasing valuable namespace for others***

This gem is needless in the now since Ruby officially supporting `keyword_init`

* https://bugs.ruby-lang.org/issues/11925
* https://bugs.ruby-lang.org/issues/9209

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

* Ruby 1.9.3 or later

License
-------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
