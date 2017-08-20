class DistinctEmailTestsController < ApplicationController
  def index
  end

  def create
    flash['notice'] = 'De-duped yo'

    @tests = ::Distinctifier::TestRunner.new.run_with_benchmark(::EmailSampleGenerator.new(count: 100).gen)

    render :index
  end
end
