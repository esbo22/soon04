class FacturesController < ApplicationController
  before_action :set_facture, only: [:show]
  def index
    @factures = facture.all
  end

  def show
    render layout: 'dumbo'
  end

  def new
    @facture = Facture.new
  end

  def create
      @client = Client.find(params[:client_id])
       @facture = Facture.new(facture_params)
       if @facture.save
      redirect_to client_path(@client)
      flash[:message] = "Facture créer avec succès."
    else
      flash[:message] = "hmm petit problème..."
      redirect_to client_path(@client)
    end
  end


  def destroy
    @client = Client.find(params[:client_id])
    @inventaire = Inventaire.find(params[:inventaire_id])
    @facture = @client.inventaire.factures.find(params[:id])
    @facture.destroy!
    redirect_to client_path(@client)
  end

private

    def facture_params
      params.require(:facture).permit(:client_id , :inventaire_id)
    end

    def set_facture
      @facture = Facture.find(params[:id])
    end

end
