listen 'timer::every', minutes:1 do |post_info|
  vars = {
    message: "Hello! This is a message from Factor.io",
    heroku_app_name: ENV['URL'].split(".").first
    current_server_time: Time.now.inspect
  }
  puts "Timer fired. About to post a message."
  run 'web::post', url:'http://requestb.in/yokqwiyo', params:vars
end
