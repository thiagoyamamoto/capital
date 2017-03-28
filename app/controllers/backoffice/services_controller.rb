class Backoffice::ServicesController < BackofficeController
  before_action :set_service, only: [:edit, :destroy, :update]
  before_action :set_categories, only: [:new, :create, :edit, :update]

  def index
  	@services = Service.all
  end

  def new  
  	@service = Service.new
  end

  def create
  	@service = Service.new(params_service)
  	if @service.save
  		redirect_to backoffice_services_path, notice: "Serviço #{@service.title} cadastrado com sucesso"
  	else
  		render :new
  	end	
  end

  def destroy
  
  if @service.destroy
      redirect_to backoffice_services_path, notice: "Serviço removido"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if (@service.update(params_service))
      redirect_to backoffice_services_path, notice: "Serviço #{@service.title} atualizado com sucesso"
    else
      render :edit
    end
  end

  private 

  def params_service
  	params.require(:service).permit(:title, :description, :category_id, :slogan, :picture)  	
  end

  def set_categories
      @categories = Category.all.order(:description)
  end

  def set_service
    @service = Service.find(params[:id])
  end

end
