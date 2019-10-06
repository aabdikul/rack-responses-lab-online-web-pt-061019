class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.strftime("%k:%M")
    resp.write "#{time}"
    resp.finish
  end
end
