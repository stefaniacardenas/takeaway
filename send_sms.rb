require 'twilio-ruby' 
 
# put your own credentials here 
account_sid = 'ACa766fe579b7dbc5572b1d67fd9dd7bf5' 
auth_token = '87f670264ae5787512425e835cb81dae' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({
	:from => '+441527962310', 
	:to => '07950289197', 
	:body => 'Thank you! Your order was placed successfully and will be delivered within 1 hour',  
})