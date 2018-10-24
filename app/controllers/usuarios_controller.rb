class UsuariosController < ApplicationController
	def index
		@users = [{:name=>"Juan", :country=>"Chile", :age=>30},
				 {:name=>"Pedro", :country=>"Argentina", :age=>15}, 
				 {:name=>"Manuel", :country=>"Perú", :age=>26}, 
				 {:name=>"Jose", :country=>"Ecuador", :age=>22}]
	end

	def create
		@users = [{:name=>"Juan", :country=>"Chile", :age=>30},
				 {:name=>"Pedro", :country=>"Argentina", :age=>15}, 
				 {:name=>"Manuel", :country=>"Perú", :age=>26}, 
				 {:name=>"Jose", :country=>"Ecuador", :age=>22}]
		if params[:order_age] != "true"
			@users= @users.sort_by{ |u| u[:name]}
		else
			@users= @users.sort_by{ |u| u[:age]}.first
		end
	end
end
