require_relative './my_server'
class MyServer
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def introduce
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>MynameisRokhaya</strong>"]
  end
end

run MyServer.new
