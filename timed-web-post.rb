listen 'timer::every', minutes:1 do |post_info|
  run 'web::post', url:'http://requestb.in/qbx6puqb'
  run 'web::post', url:'http://requestb.in/1iu7m1d1'
end
