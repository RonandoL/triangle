require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle_results') do
  @sideA = params.fetch('side_a').to_i
  @sideB = params.fetch('side_b').to_i
  @sideC = params.fetch('side_c').to_i
  triangle_object = Triangles.new(@sideA, @sideB, @sideC)
  @result = triangle_object.triangle_type()
  erb(:title)
end
