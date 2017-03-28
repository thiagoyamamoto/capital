class Backoffice::MenusController < BackofficeController
    before_action :set_menu, only: [:edit, :destroy, :update, :show]
    before_action :set_services, only: [:new, :create, :edit, :update]

  def index
  	@menus = Menu.all
  end

  def show
    
  end

  def new    
  	@menu = Menu.new    
    @menu.service_id = params[:id]    
  end

  def create
  	@menu = Menu.new(params_menu)
  	if @menu.save
  		redirect_to backoffice_menus_path, notice: "Cardápio cadastrado com sucesso"
  	else
  		render :new
  	end	
  end

  def destroy
  
  if @menu.destroy
      redirect_to backoffice_menus_path, notice: "Cardápio removido"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if (@menu.update(params_menu))
      redirect_to backoffice_menus_path, notice: "Cardápio atualizado com sucesso"
    else
      render :edit
    end
  end

  private 

  def set_services
    @services = Service.all.order(:title)    
  end

  def params_menu
  	params.require(:menu).permit(:title, :description, :service_id, drinks_attributes: [:id, :name, :_destroy], foods_attributes: [:id, :name, :_destroy])  	
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
