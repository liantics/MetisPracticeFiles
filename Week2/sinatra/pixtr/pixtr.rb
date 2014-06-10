require "sinatra"

get "/:gallery_name" do
	cat_images_in_pixtr_rb = ["colonel_meow.jpg", "grumpy_cat.png"] 
	dog_images_in_pixtr_rb = ["dog.png"] 

	gallery_name = params[:gallery_name] #sinatra sees the : in the get, creates a hash, used here
	erb gallery_name.to_sym , locals: {cat_images: cat_images_in_pixtr.rb, dog_images: dog_images_in_pixtr_rb}
	#to_sym converts a string to a symbol, calls the erb method on that symbol
	# sinatra will create variables in your view with the names of keys in the hash that is, itself, a value from locals
end

# #sinatra can render files: take a file, read it, send it to the browser
# 	get "/cats" do
# 		erb :cats
# 	end

# 	get "/dogs" do
# 		erb :dogs
# 	end

# 	get "/wombats" do
# 	end
