require 'faker'

class EmailSampleGenerator
  attr_reader :count, :rand_range, :email_factory, :emails, :half_count

  def initialize(count: 4, rand_range: 1..2, email_factory: Faker::Internet)
    @count = count
    @rand_range = rand_range
    @email_factory = email_factory
    @emails = []
    @half_count = (count.to_f / 2).to_i
  end

  def gen
    @emails = []
    half_count.times do
      emails.push email_factory.email
    end
    half_count.times do
      emails.insert(rand_array_location, emails[rand_array_location])
    end
    emails
  end

  private

  def duplicate_count
    rand(rand_range)
  end

  def rand_array_location
    loc = rand(0...emails.size)
    return 0 if loc.nil?
    loc
  end
end

