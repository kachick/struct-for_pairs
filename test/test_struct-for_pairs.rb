# coding: us-ascii

$VERBOSE = true

require 'test/unit'
require_relative '../lib/struct/for_pairs'

module Struct_Construct_For_Pairs_Testable
  def test_struct_singleton_class
    foobar = Struct.__send__(the_method_name, bar: 456, foo: 123)
    assert_kind_of Struct, foobar
    assert_equal [:bar, :foo], foobar.members
    assert_same foobar[0], foobar.bar
    assert_same foobar[1], foobar.foo
    assert_equal 123, foobar.foo
    assert_equal 456, foobar.bar
  end

  def test_struct_subclass
    subclass = Struct.new :foo, :bar
    foobar = subclass.__send__(the_method_name, bar: 456, foo: 123)
    assert_kind_of Struct, foobar
    assert_instance_of subclass, foobar
    assert_equal [:foo, :bar], foobar.members
    assert_same foobar[0], foobar.foo
    assert_same foobar[1], foobar.bar
    assert_equal 123, foobar.foo
    assert_equal 456, foobar.bar
  end
end

class Test_Struct_For_Pairs < Test::Unit::TestCase
  include Struct_Construct_For_Pairs_Testable

  def the_method_name
    :for_pairs
  end
end

class Test_Struct_From_Pairs < Test::Unit::TestCase
  include Struct_Construct_For_Pairs_Testable

  def the_method_name
    :from_pairs
  end
end
