class Application
  @@items = ["apples", "bananas", "golf balls"]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new 
    
    if req.path.match(/items/)
      @@items.each do
  end 
end 