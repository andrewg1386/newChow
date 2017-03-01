class ClientsController < ApplicationController
  def index
    @clients = Client.all
    if params[:search]
      @clients = Client.search(params[:search]).order("created_at DESC")
    else
      @Clients = Client.all.order("created_at DESC")
    end
  end

  def log_reg
  end

  def show
  end

  def create
    client = Client.new(client_params)

    if client.save
      session[:client_id] = client.id
    else
      flash[:errors]=clients.errors.full_messages
      redirect_to :back
    end
  end
  private
  def client_params
    params.require(:client).permit(:name,:email,:password,:password_confirmation)
  end
end
