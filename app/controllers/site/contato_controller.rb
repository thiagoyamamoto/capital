class Site::ContatoController < ApplicationController
  def index
  	@request = Request.new
  	@categories = Category.all.order(:description)
  end

  def create
  	@request = Request.new params.require(:request).permit(:name, :email, :phone, :date, :message, :guest, :category_id, :company)
  	if @request.save
      ContatoMailer.contact_email(@request).deliver_now
  		render :success
  	else
      @categories = Category.all.order(:description)
  		render :index
  	end
  end

end
