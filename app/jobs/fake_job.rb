class FakeJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    puts "Hello from the fake job"
    sleep 5
    puts "Done"
  end
end
