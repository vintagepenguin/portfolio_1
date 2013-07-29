get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  
  erb :create_event
end

post '/events/create' do
  @event = Event.create(params[:user])
  redirect to ("/")
end
