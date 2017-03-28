class Site::HomeController < ApplicationController
  def index
  	@servicos = Service.all.order(:title)
  	@clientes = Client.all
  end
end
