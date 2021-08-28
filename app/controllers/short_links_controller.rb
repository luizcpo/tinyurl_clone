class ShortLinksController < ApplicationController
  before_action :set_short_link, only: %i[ redirect info ]

  # GET /:token
  def redirect
    if @short_link.nil?
      render 'errors/404', status: 404 
    else
      create_statistic
      redirect_to @short_link.url
    end

  end

  # GET /:token/info
  def info
    @statistics = Statistic.where(short_link_id: @short_link.id)
  end

  def new
    @short_link = ShortLink.new
  end

  def show;
    @short_link = ShortLink.find(params[:id])
  end

  def create
    @short_link = ShortLink.new(short_link_params)
    
    if @short_link.save
      create_statistic
      redirect_to short_link_path(id: @short_link.id), notice: "Short link was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def create_statistic
    if @statistic
      @statistic.update(clicks: @statistic.clicks+1, short_link_id: @short_link.id)
    else
      @statistic = Statistic.new(ip: request.remote_ip, short_link_id: @short_link.id)
      @statistic.save
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_short_link
    @short_link = ShortLink.find_by_token(params[:token])
    @statistic = Statistic.find_by(ip: request.remote_ip, short_link_id: @short_link.id) if @short_link
  end

  # Only allow a list of trusted parameters through.
  def short_link_params
    params.require(:short_link).permit(:url, :token)
  end
end
