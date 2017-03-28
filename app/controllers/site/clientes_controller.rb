class Site::ClientesController < ApplicationController
  def index
  	@clientes = Client.all.order(:name)
  end
end
