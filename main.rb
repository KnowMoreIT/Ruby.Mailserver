require 'mail'

Mail.defaults do
    delivery_method :smtp, address: 'localhost', port: 25
end

Mail.listen do |message|
    puts "Subject: #{message.subject}"
    puts "Body: #{message.body.decoded}"
end