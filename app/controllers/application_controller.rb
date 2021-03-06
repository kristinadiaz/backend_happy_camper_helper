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
    item = Item.create({
      name: params[:name],
      description: params[:description],
      shopping_url: params[:shopping_url],
      image_url: params[:image_url],
      added: true
    })
    item.to_json
  end

  delete "/items/:id" do 
    Item.find(params[:id]).destroy.to_json
  end

  get "/my_list" do 
    # only the items that are true
    Item.where(added: true).to_json
  end

  patch "/my_list" do 
   Item.where(id: params[:id]).update_all(added: true).to_json 
  end


  # delete "/my_list/:id" do 
  #   list = MyList.find(params[:id])
  #   list.destroy
  #   list.to_json
  # end

end
