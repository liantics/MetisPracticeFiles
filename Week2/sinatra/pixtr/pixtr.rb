require "sinatra"
require "active_record"
require "pg"

class Galleries < ActiveRecord::Base
end

get "/" do
	@galleries = Galleries.all
	erb :index
end

get "/:gallery_name" do

  cat_images_in_app_rb = ["colonel_meow.jpg", "grumpy_cat.png"]
  dog_images_in_app_rb = ["shibe.png"]

  gallery_name = params[:gallery_name]
  erb(gallery_name.to_sym, {
    locals: {
      cat_images: cat_images_in_app_rb,
      dog_images: dog_images_in_app_rb
    }
  })

end