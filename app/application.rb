class Application
  @@items = [Item.new("Apples", "4000"),
  Item.new "Bananas", "546"]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new 
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{|s| s.name == item_name}
      
      resp.write item.name
    else
      resp.write"route not found"
      resp.status = 404
    end 
    
    resp.finish
  end 
end 