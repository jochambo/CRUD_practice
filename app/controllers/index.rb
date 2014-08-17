get '/' do
  @trucks = Truck.all
  erb :index
end
