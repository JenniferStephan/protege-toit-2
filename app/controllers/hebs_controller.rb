class HebsController < ApplicationController
skip_before_action :authenticate_user!, only: [ :index, :new, :create, :show ]

  def index
      if params[:query].present?
      hebs = Heb.geocoded.order(created_at: :asc)
      sql_query = "hebs.name ILIKE :query  OR hebs.address ILIKE :query"
        @hebs = hebs.where(sql_query, query: "%#{params[:query]}%")
      else
        @hebs = Heb.geocoded
      end

      @markers = @hebs.map do |heb|
      {
        lat: heb.latitude,
        lng: heb.longitude
      }
    end

    end

    def show
      @hebergement = Heb.find(params[:id])
    end

    def new
      @hebergement = Heb.new
    end

    def create
      @hebergement = Heb.new(heb_params)
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
