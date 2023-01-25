class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :sitemap, :english]

  def home
    @projects = Project.all
    @project = Project.new
    @dianas = Diana.all
    @markers = @dianas.geocoded.map do |diana|
      {
        lat: diana.latitude,
        lng: diana.longitude,
        image_url: helpers.cloudinary_url(diana.photo.key),
        info_window: render_to_string(partial: "info_window", locals: {diana: diana})
      }
    end
  end

  def about
    @projects = Project.all
    @project = Project.new
    @dianas = Diana.all
    @contact = Contact.new
    @markers = @dianas.geocoded.map do |diana|
      {
        lat: diana.latitude,
        lng: diana.longitude,
        image_url: helpers.cloudinary_url(diana.photo.key),
        info_window: render_to_string(partial: "info_window", locals: {diana: diana})
      }
    end
  end

  def english
    @project_englishes = ProjectEnglish.all
    @project_english = ProjectEnglish.new
    @dianas = Diana.all
    @contact = Contact.new
    @markers = @dianas.geocoded.map do |diana|
      {
        lat: diana.latitude,
        lng: diana.longitude,
        image_url: helpers.cloudinary_url(diana.photo.key),
        info_window: render_to_string(partial: "info_window", locals: {diana: diana})
      }
    end
  end

  def sitemap
    @projects = Project.all
  end
end
