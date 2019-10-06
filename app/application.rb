class Application
  def call(env)
    resp = Rack::Response.new
    if Time.new(2015,11,27,9,30).hour.to_i < 13
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
