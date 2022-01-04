class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/items" do
    Item.all.to_json
  end

  get "/seasons" do
    Season.all.to_json
  end

  get "/trails" do 
    Trail.all.to_json
  end

  get "/fall" do 
    Season.first.items.to_json
  end

  get "/winter" do
    Season.second.items.to_json
  end

  get "/spring" do 
    Season.third.items.to_json
  end

  get "/summer" do 
    Season.fourth.items.to_json
  end

end
