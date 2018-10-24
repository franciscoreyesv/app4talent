class ClimaController < ApplicationController   
    include HTTParty

  def index
      if !params[:city_name].blank?
         @clima = HTTParty.get('http://api.openweathermap.org/data/2.5/forecast?q=' + params[:city_name] + '&APPID=01e6def73fb1be4f58d88bae77001e0b&lang=es')
         
      end
    end
end