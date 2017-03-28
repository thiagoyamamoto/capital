class Backoffice::TestimonialsController < BackofficeController
  before_action :set_testimonial, only: [:edit, :destroy, :update]

  def index
  	@testimonials = Testimonial.all.order(created_at: :desc)
  end

  def new  
  	@testimonial = Testimonial.new
  end

  def create
  	@testimonial = Testimonial.new(params_testimonial)
  	if @testimonial.save
  		redirect_to backoffice_testimonials_path, notice: "Depoimento cadastrado com sucesso"
  	else
  		render :new
  	end	
  end

  def destroy
  
  if @testimonial.destroy
      redirect_to backoffice_testimonials_path, notice: "Depoimento removido"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if (@testimonial.update(params_testimonial))
      redirect_to backoffice_testimonials_path, notice: "Depoimento atualizado com sucesso"
    else
      render :edit
    end
  end

  private 

  def params_testimonial
  	params.require(:testimonial).permit(:message, :name, :company)  	
  end

  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

end
