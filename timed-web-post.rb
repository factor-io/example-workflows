listen 'timer','every', minutes:1 do |post_info|
  run 'web','post', address:'http://requestb.in/qbx6puqb'
  run 'web','post', address:'http://requestb.in/1iu7m1d1'
end