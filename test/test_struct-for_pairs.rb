# coding: us-ascii

$VERBOSE = true

require 'test/unit'
require_relative '../lib/struct/for_pairs'

class Test_Struct_For_Pairs < Test::Unit::TestCase

  def test_struct_singleton_class
    foobar = Struct.for_pairs bar: 456, foo: 123
    assert_kind_of Struct, foobar
    assert_equal [:bar, :foo], foobar.members
    assert_same foobar[0], foobar.bar
    assert_same foobar[1], foobar.foo
    assert_equal 123, foobar.foo
    assert_equal 456, foobar.bar
  end

  def test_struct_subclass
    subclass = Struct.new :foo, :bar
    foobar = subclass.for_pairs bar: 456, foo: 123
    assert_kind_of Struct, foobar
    assert_instance_of subclass, foobar
    assert_equal [:foo, :bar], foobar.members
    assert_same foobar[0], foobar.foo
    assert_same foobar[1], foobar.bar
    assert_equal 123, foobar.foo
    assert_equal 456, foobar.bar
  end

end
