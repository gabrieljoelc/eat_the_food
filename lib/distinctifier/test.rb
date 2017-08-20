module Distinctifier
  class Test
    attr_reader :sample, :actual, :method

    def initialize(sample, method = :distinct)
      @sample = sample
      @method = method
    end 
    
    def act
      @actual = sample.send(method)
    end 
    
    def assert
      actual == sample.uniq
    end 

    def run 
      act 
      if assert
        puts 'Assert success!'
      else
        puts "Assert failed. Sample: #{sample}. Actual: #{actual}"
      end 
      self
    end 
  end
end
