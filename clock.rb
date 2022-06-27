require "clockwork"
require "./config/boot"
require "./config/environment"
include Clockwork

handler do |job|
  puts "Running #{job}"
end

every(10.seconds, "cleaning job") { GuestsCleanupJob.perform_later }
