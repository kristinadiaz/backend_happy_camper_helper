class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do 
    "Hello World!"
  end
  
  get "/items" do
    Item.all.to_json
  end

  get "/seasons" do
    Season.all.to_json
  end

  get "/trails" do 
    Trail.all.to_json
  end

  post "/items" do 
    Item.create(
      name: params[:name],
      description: params[:description],
      shopping_url: params[:shopping_url],
      image_url: params[:image_url],
      season_id: params[:season_id],
      trail_id: params[:trail_id],
      added: params[:added]
    ).to_json
  end

  delete "/items/:id" do 
    Item.find(params[:id]).destroy.to_json
  end

  get "/my_list" do 
    MyList.all.to_json
  end

  post "/my_list" do 
   list = Item.find(params[:id]) 
   list.update(MyList.create(
    item_id: list.id
   )).to_json
  end

  delete "/my_list/:id" do 
    list = MyList.find(params[:id])
    list.destroy
    list.to_json
  end

end
