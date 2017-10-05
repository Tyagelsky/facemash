class TopController < ApplicationController
  def index
    @tops = Photo.order(rating: :desc).paginate(page: params[:page],
                                                  per_page: 5)
  end
end
