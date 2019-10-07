class Application
  def call(env)
    resp = Rack::Response.new
    binding.pry
    if Time.new.hour.to_i < 13
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
