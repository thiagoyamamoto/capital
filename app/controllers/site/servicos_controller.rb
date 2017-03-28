class Site::ServicosController < ApplicationController

  def index
  	@servicos = Service.all.order(:title)
  end

  def show
  	@servico = Service.find(params[:id])
  	@servicos = Service.all.order(:title)
  	@outros_servicos = @servicos.sample(4)
  end
end
