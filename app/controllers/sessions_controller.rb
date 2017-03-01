class SessionsController < ApplicationController
  def index
  end

  def home
    client = Client.find_by(email: params[:email])

    if client && client.authenticate(params[:password])
      session[:client_id] = client.id
      redirect_to "/"
    else
      flash[:errors] = ["Invalid Combination, Please Try Again!"]
      redirect_to :back
    end
  end
end
