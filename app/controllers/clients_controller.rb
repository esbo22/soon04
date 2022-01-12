class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  def index
      if params[:query].present?
        @clients = Client.where("nom LIKE ?", "%#{params[:query]}%")
      else
        @clients = Client.all
      end
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to @client
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @client.destroy!

    redirect_to clients_path
  end

  private

    def client_params
      params.require(:client).permit(:nom, :ville, :telephone, :adresse, :contact, :codepostal, :email, :referent, :telreferent)
    end

    def set_client
      @client = Client.find(params[:id])
    end
end
