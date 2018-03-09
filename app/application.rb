class Application
  @@items = [Item.new("Apples", "4000")]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new 
    
    if req.path.match(/items/)
      @@items.each do |item|
        resp.write"#{item}"
      end 
    else
      resp.write"route not found"
      resp.status = 404
    end 
    
    resp.finish
  end 
end 