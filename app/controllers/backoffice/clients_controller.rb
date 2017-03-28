class Backoffice::ClientsController < BackofficeController
  before_action :set_client, only: [:edit, :destroy, :update]  

  def index
  	@clients = Client.all
  end

  def new  
  	@client = Client.new
  end

  def create
  	@client = Client.new(params_client)
  	if @client.save
  		redirect_to backoffice_clients_path, notice: "Cliente #{@client.name} cadastrado com sucesso"
  	else
  		render :new
  	end	
  end

  def destroy
  
  if @client.destroy
      redirect_to backoffice_clients_path, notice: "Cliente removido"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if (@client.update(params_client))
      redirect_to backoffice_clients_path, notice: "Cliente #{@client.name} atualizado com sucesso"
    else
      render :edit
    end
  end

  private 

  def params_client
  	params.require(:client).permit(:name, :description, :website, :picture)  	
  end
  
  def set_client
    @client = Client.find(params[:id])
  end
end
