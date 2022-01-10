class InventairesController < ApplicationController
  def create
    @client = Client.find(params[:client_id])
    @inventaire = @client.inventaires.create(inventaire_params)
    redirect_to client_path(@client)
  end

  def destroy
    @client = Client.find(params[:client_id])
    @inventaire = @client.inventaires.find(params[:id])
    @inventaire.destroy!
    redirect_to client_path(@client)
  end

  private
    def inventaire_params
      params.require(:inventaire).permit(:quantity, :total)
    end
end



