class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform
    Rails.logger.debug "Doing some cleaning here."
    puts "do you see this?"
  end
end
