require './transaction'

describe Transaction do

	let(:transaction){ Transaction.new(credit_account: 136475, debit_account: 2384, amount: 2859403, time: Time.new(2015)) }

	it "should return true if account number is valid" do
		expect(transaction.credit_account).to eq(136475)
	end

	it "amount must be of type integer and amount in cents" do
		expect(transaction.amount).to eq(2859403)
	end

	it "time must be of Time date type" do
		expect(transaction.time).to eq(Time.new(2015))
	end

	it "should return amount to currency" do
		expect(transaction.amount_to_currency).to eq("$28594.03")
	end

	# let(:filled_in_transactions){Transaction.new(credit_account: 123, debit_account: 4000, amount: 800, time: Time.now)}

	# it "should come up with the exact time, should replace with current time, Hour.Minute AM/PM" do
	# 	expect(filled_in_transactions.pretty_time).to eq("Monday, 09 Nov 2015  4:11 PM")
	# end	

	it "should return pretty time" do
		expect(transaction.pretty_time).to eq("Thursday, 01 Jan 2015 12:00 AM")
	end

	after(:each) do     
		puts "----TRANSACTION COMPLETE!----"   
	end

end