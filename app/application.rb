class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    if time.hour < 12
      resp.write "Good Morning! The current time is: #{time.strftime("%k:%M")}"
    else
      resp.write "Good Evening! The current time is: #{time.strftime("%k:%M")}"
    end
    resp.finish
  end
end
