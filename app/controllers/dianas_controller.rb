class DianasController < ApplicationController
  def index
    @dianas = Diana.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @dianas.geocoded.map do |diana|
      {
        lat: diana.latitude,
        lng: diana.longitude,
        image_url: helpers.cloudinary_url(diana.photo.key),
        info_window: render_to_string(partial: "info_window", locals: {diana: diana})
      }
    end
  end

  def new
    @diana = Diana.new
  end

  def create
    @diana = Diana.new(diana_params)
    if @diana.save
    redirect_to @diana, notice: 'diana was successfully created.'
    else
    render :new
    end
  end

  def show
    @diana = Diana.find(params[:id])
  end

  def update
    @diana = Diana.find(params[:id])
    if @diana.update(diana_params)
    redirect_to @diana, notice: 'diana was successfully updated.'
    else
    render :edit
    end
  end

  def destroy
    @diana = Diana.find(params[:id])
    @diana.destroy
    redirect_to dianas_url, notice: 'diana was successfully destroyed.'
  end

  private

  def diana_params
    params.require(:diana).permit(:address, :photo)
  end
end
