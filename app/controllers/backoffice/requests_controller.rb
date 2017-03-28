class Backoffice::RequestsController < BackofficeController
	before_action :set_request, only: [:show, :destroy]
  
  def index
  	@requests = Request.all.order(created_at: :desc).page(params[:page]).per(20)
    @received_emails = Request.count
    @clients_registered = Client.count
    @services_registered = Service.count
    @testimonials_registered = Testimonial.count
  end

  def destroy  
  	if @request.destroy
      redirect_to backoffice_requests_path, notice: "E-mail removido"
    else
      render :index
    end
  end

  def show
  end

  private

  def set_request
  	@request = Request.find(params[:id])
  end

end
