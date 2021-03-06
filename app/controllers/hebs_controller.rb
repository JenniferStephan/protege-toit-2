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
        lng: heb.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { heb: heb }),
        image_url: helpers.asset_url('picto-map.png')
      }
    end

    end

    def show
      @heb = Heb.find(params[:id])
    end

    def new
      @heb = Heb.new
    end

    def create
      @heb = Heb.new(heb_params)
      if @heb.save
        @hebs = Heb.geocoded
        render :index
      else
        render :new
      end
    end

  private

  def heb_params
      params.require(:heb).permit(:name, :address, :description)
  end


end
