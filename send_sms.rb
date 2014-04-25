require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC10f596454dd3786204276170a2db36a7'
auth_token = '0ef4d81a536d20845b1d63a579520b4b'
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.sms.messages.create(:body => "Hello Sebastien",
    :to => "+447950289197",     # Replace with your phone number
    :from => "+441913280559")   # Replace with your Twilio number
puts message.sid