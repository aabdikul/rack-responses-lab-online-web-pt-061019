class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new.strftime("%k:%M")
    if time < 12
      resp.write "Good Morning! The current time is: #{time}"
    else
      resp.write "Good Evening! The current time is: #{time}"
    end
    resp.finish
  end
end
