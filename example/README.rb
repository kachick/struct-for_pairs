# coding: us-ascii

$VERBOSE = true

require_relative '../lib/struct/for_pairs'

FooBar = Struct.new :foo, :bar

foobar = FooBar.for_pairs bar: 456, foo: 123
p foobar
p foobar.foo #=> 123
p foobar.bar #=> 456

foobar = Struct.for_pairs bar: 456, foo: 123
p foobar
p foobar.foo #=> 123
p foobar.bar #=> 456
