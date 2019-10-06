class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new.strftime("%k:%M")
    resp.write "#{time}"
    resp.finish
  end
end
