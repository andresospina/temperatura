require 'sinatra'
require "sinatra/reloader" if development?
require "./helpers"


#routes
get '/' do
  @titulo = "Conversión de temperatura"
  erb:home
end

get '/celsius' do
  @titulo = "Conversión de celsius"
  @Pregunta = "¿Cuatos grados celsius?"
  @grado = "celsius"
  erb:celsius
end

get '/fahrenheit' do
  @titulo = "Conversión de Fahrenheit"
  @Pregunta = "¿Cuatos grados Fahrenheit?"
  @grado = "Fahrenheit"
  erb:fahrenheit
end

get '/kelvin' do
  @titulo = "Conversión de Kelvin"
  @Pregunta = "¿Cuatos grados Kelvin?"
  @grado = "Kelvin"
  erb:kelvin
end


get '/resultados' do
  @titulo = "Conversión de Kelvin"
  @Pregunta = "¿Cuatos grados Kelvin?"
  @grado = "Kelvin"
  erb:kelvin
end

post '/celsius' do
  @celsius = params[:celsius]
  erb :celsius
end
