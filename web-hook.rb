require 'factor-connector-web'

web_hook = run 'web::hook'

web_hook.on(:trigger) do |post_info|
  if post_info[:configured]
    success 'Configured and listening on...'
    success post_info[:configured][:url]
  else
    info post_info
  end
end

web_hook.on(:log) do |log_info|
  debug log_info[:message]
end

web_hook.execute
web_hook.wait