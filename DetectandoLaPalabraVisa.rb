payment = "Welcome, your Visa Credit Card has been processed"
if payment.include?("Visa")
	puts payment[payment.index("Credit")+"Credit".length+1..payment.length].sub("processed","Charged")
else
	puts "We only accept visa credit card"
end