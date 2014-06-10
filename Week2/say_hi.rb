require "sinatra"

# get "/hello" do
# "hi there"
# end

get "/hello_with_header" do
	# #status code
	status = 200
	# headers
	headers = {"X-Me" => "I am great"}
	# body text
	body = "Liane is learning"

	[status, headers, body]
end

