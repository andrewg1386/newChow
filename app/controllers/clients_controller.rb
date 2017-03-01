class ClientsController < ApplicationController
  def index
    @clients = Client.all
    if params[:search]
      @clients = Client.search(params[:search]).order("created_at DESC")
    else
      @Clients = Client.all.order("created_at DESC")
    end
  end
end
