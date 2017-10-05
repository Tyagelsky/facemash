class BattlesController < ApplicationController
  before_action :get_photos, only: [:index]

  def index; end

  def create
    @battle = Battle.new(battle_params)

    if @battle.save
      get_photos
      render partial: 'battles/members_photos'
    else
      redirect_to battles_path, notice: "Something was wrong"
    end
  end

  private

  def battle_params
    params.permit(:photo_winner_id, :photo_looser_id)
  end

  def get_photos
    @photos = Photo.where(id: Photo.ids.shuffle.take(2))
    @photo1 = @photos[0]
    @photo2 = @photos[1]
  end
end
