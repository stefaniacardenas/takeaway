require 'twilio-ruby'

module Sms
 
	def time
		time_plus_one_hour = Time.now + 1*60*60
		time_plus_one_hour.strftime('%H:%M') 
	end

	def send_sms
		# my twilio credentials
		account_sid = 'ACa766fe579b7dbc5572b1d67fd9dd7bf5' 
		auth_token = '87f670264ae5787512425e835cb81dae' 
	 
		# set up a client to talk to the Twilio REST API 
		@client = Twilio::REST::Client.new account_sid, auth_token 
		@client.account.messages.create({
				# this number has been provided by twilio
				:from => '+441527962310',
				# this is an enabled number of my choice
				:to => '07950289197',
				:body => "Thank you! Your order was placed successfully and will be delivered at #{time}",  
			})
	end

end