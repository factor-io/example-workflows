require 'factor-connector-timer'

every = run 'timer::every', seconds:3

every.on(:trigger) do |post_info|
  info "Time now: #{post_info[:time_run]}"
end

every.on(:log) do |log_info|
  debug log_info[:message]
end

every.execute
every.wait
success 'done'