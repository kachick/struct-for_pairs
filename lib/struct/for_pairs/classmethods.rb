class Struct; module For_Pairs

  module ClassMethods
  
    # @param [Hash, Struct, #each_pair] pairs - nameA => valueX
    # @return [Struct] new instance
    def for_pairs(pairs)
      new(*pairs.keys.map(&:to_sym)).for_pairs pairs
    end
  
    private
    
    def inherited(cls)
      super
      cls.extend For_Pairs::SubclassClassMethods
    end

  end

end; end
