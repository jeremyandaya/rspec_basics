require './main'

describe User do

	it "should return all the users" do
		expect(User.all).to eq(nil)
	end

end