require 'sinatra'
require "sinatra/reloader" if development?


#routes
get '/' do
  @titulo = "Conversión de temperatura"
  erb:home
end

get '/celcius' do
  @titulo = "Conversión de Celcius"
  @Pregunta = "¿Cuatos grados Celcius?"
  @grado = "Celcius"
  erb:celcius
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

get '/resultado' do
  erb:resultado
end
