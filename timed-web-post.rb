listen 'timer::every', minutes:1 do |post_info|
	vars = {
    message: "Hello! This is a message from Factor.io",
    heroku_app_name: ENV['URL'].split(".").first
		current_server_time: Time.now.inspect
  }
	run 'web::post', url:'http://requestb.in/yokqwiyo', params:vars
end
