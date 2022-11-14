class FakeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Hello from the fake job"
  end
end
