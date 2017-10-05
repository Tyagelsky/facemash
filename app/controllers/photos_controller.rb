class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :find_photo!, only: [:show, :edit, :update, :destroy]

  def new
    @photo = Photo.new
  end

  def show; end

  def create
    @photo = current_user.build_photo(photo_params)
    if @photo.save
      flash[:success] = "Photo was successfuly created"
      redirect_to @photo
    else
      flash[:danger] = "Something was wrong"
      render 'new'
    end
  end

  def edit; end

  def update
    if @photo.update(photo_params)
      flash[:success] = "Photo was successfuly updated"
      redirect_to root_path
    else
      flash[:danger] = "Something was wrong"
      render 'edit'
    end
  end

  def destroy
    @photo.destroy
    flash[:danger] = "Photo was successfuly deleted"
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:source)
  end

  def find_photo!
    @photo = current_user.photo
    unless @photo.present?
      flash[:danger] = "You have no photo"
      redirect_to root_path
    end
  end
end
