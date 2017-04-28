class PhotosController < ApplicationController
  # protect_from_forgery with: :exception

  def index
    @all_photos = Photo.order({:created_at => :desc})
    render("index.html.erb")

  end

  def create_row
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find(params[:the_id_number])
    render("photos/edit_form.html.erb")
    #@id_number = @the_photo_to_be_edited.id
    #@caption = p.caption
    #@image_url = p.source
  end

  def update_row
    p=Photo.find(params[:the_id_number])
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("/photos")
    #redirect_to("/photos")
  end

  def show
    @id_number = params["the_id_number"]
    p = Photo.find(@id_number)
    @caption = p.caption
    @image_url = p.source
    @created_at = p.created_at

    render("show.html.erb")
  end

  def delete_row
    @id_number = params["the_id_number"]
    p = Photo.find(@id_number)
    p.destroy
    redirect_to("/photos")
  end

end
