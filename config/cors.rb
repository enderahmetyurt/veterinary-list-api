configure do
  set :allow_origin, :any
  set :allow_methods, [:get, :post, :options, :delete, :put]

  enable :cross_origin
end

options "*" do
  response.headers["Allow"] = "HEAD,GET,PUT,POST,OPTIONS,DELETE"
  response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
end