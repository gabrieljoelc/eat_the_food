require 'benchmark'
require_relative 'test'

module Distinctifier
  class TestRunner
    attr_reader :method

    def initialize(method = :distinct)
      @method = method
    end

    def run(*samples)
      tests = {}
      samples.each do |sample|
        test = Test.new(sample, method)
        test.run
        tests[sample] = test
      end
      tests
    end 

    def run_with_benchmark(*samples)
      tests = {}
      Benchmark.bm(7) do |benchmark|
        samples.each do |sample|
          test = Test.new(sample, method)
          benchmark.report { test.run }
          tests[sample] = test
        end 
      end
      tests
    end

    def self.run(*samples)
      new.run(*samples)
    end 
  end
end
