class HebsController < ApplicationController

  def index
      if params[:query].present?
      hebergements = Hebergement.order(created_at: :asc)
      sql_query = "hebergements.name ILIKE :query  OR hebergements.address ILIKE :query"
        @hebergements = hebergements.where(sql_query, query: "%#{params[:query]}%")
      else
        @hebergements = Hebergement.all
      end
    end

    def show
      @hebergement = Hebergement.find(params[:id])
    end

    def new
      @hebergement = Hebergement.new
    end

    def create
      @hebergement = Hebergement.new(heb_params)
      if @hebergement.save
        redirect_to root_path
      else
        render :new
      end
    end

  private

  def heb_params
      params.require(:hebergement).permit(:name, :address, :nbmax)
  end


end
