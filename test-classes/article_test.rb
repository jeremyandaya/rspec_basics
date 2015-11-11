require './article'

describe Article do

	# before do 
	# 	@article = Article.new
	# end

	let(:article){ Article.new }   
	let(:filled_in_article){ Article.new(title: "This is my title", body: "This is my body", author: "qeremy") }

	it "title?" do
		expect(!filled_in_article.title).to eq(false) 
	end

	it "body?" do
		expect(!filled_in_article.body).to eq(false) 
	end

	it "string_empty?(string)" do
		expect(!filled_in_article.title || !filled_in_article.body).to eq(false) 
	end

	it "authors_name_starts_with_q?" do
		expect(filled_in_article.author[0].downcase).to eq("q") 
	end

	it "should return title + author + body as html" do
		expect(filled_in_article.article_as_html).to eq("<h1>This is my title</h1><b>qeremy</b><p>This is my body</p>") 
	end

	it "title_as_html" do
		expect(filled_in_article.title_as_html).to eq("<h1>This is my title</h1>") 
	end

	it "author_as_html" do
		expect(filled_in_article.author_as_html).to eq("<b>qeremy</b>") 
	end

	it "should return body as html" do
		expect(filled_in_article.body_as_html).to eq("<p>This is my body</p>") 
	end

	after(:each) do     
		puts "TEST COMPLETE!"   
	end
	
end