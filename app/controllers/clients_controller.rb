class ClientsController < ApplicationController
  def index
    @clients = Client.all
    if params[:search]
      @clients = Client.search(params[:search]).order("created_at DESC")
    else
      @Clients = Client.all.order("created_at DESC")
    end
    :back
  end

  def new
  @client = client.create( name: params[:name], description: params[:description])
  #this redirect only applies for when the client was successfully created! You'll have to modify this  code with an if statement to RENDER the new view IF there are errors ELSE REDIRECT to the clients view if there weren't errors.
  redirect_to '/clients'
end
def edit
  @clients = Client.find(name: params[:name], email: params[:email])
end
def show
  @clients = Client.search(params[:city])
end




  def log_reg
  end

  def show
  end

  def create
    client = Client.new(client_params)

    if client.save
      session[:client_id] = client.id
      redirect_to :back
    end
  end
  private
  def client_params
    params.require(:client).permit(:name,:email,:password,:password_confirmation,:street,:city,:state,:zip)
  end

end
