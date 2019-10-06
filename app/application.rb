class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    if time.hour < 13
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon! #{time.hour}"
    end
    resp.finish
  end
end
