# coding: us-ascii

class Struct; module For_Pairs

  module SubclassClassMethods

    # @param [Hash, Struct, #each_pair] pairs - nameA => valueX
    # @return [Struct] new instance
    def for_pairs(pairs)
      new.tap {|instance|
        pairs.each_pair do |key, value|
          instance[key] = value
        end
      }
    end
  
  end

end; end
