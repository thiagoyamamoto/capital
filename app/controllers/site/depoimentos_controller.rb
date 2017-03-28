class Site::DepoimentosController < ApplicationController
  def index
  	@depoimentos = Testimonial.all.order(created_at: :desc)
  	@servicos = Service.all.order(:title)
  	@outros_servicos = @servicos.sample(4)
  end
end
