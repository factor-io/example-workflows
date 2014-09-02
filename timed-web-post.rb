listen 'timer::every', minutes:1 do |post_info|
  # Get your own requestb.in URL here: http://requestb.in/
  run 'web::post', url:'http://requestb.in/yokqwiyo'
end
