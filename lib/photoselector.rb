class Photoselector
  def initialize(photo_winner, photo_looser)
    @photo_winner   = photo_winner
    @photo_looser = photo_looser
  end

  def perform
    result = Ratechanger.new(winner: @photo_winner.rating,
                             looser: @photo_looser.rating)
    @photo_winner.update(rating: result.calculate_rating_for_winner)
    @photo_looser.update(rating: result.calculate_rating_for_looser)
  end
end
