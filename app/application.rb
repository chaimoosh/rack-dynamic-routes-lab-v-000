class Application
  @@items = [Item.new("Apples", "4000"),
  Item.new "Bananas", "546"]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new 
    
    if req.path.match(/items/)
      
    else
      resp.write"route not found"
      resp.status = 404
    end 
    
    resp.finish
  end 
end 