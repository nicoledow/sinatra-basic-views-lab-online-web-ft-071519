require_relative 'config/environment'

class App < Sinatra::Base

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/)
      resp.status = 200
    end
  end

end