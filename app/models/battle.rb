class Battle < ApplicationRecord
  belongs_to :photo_winner, class_name: 'Photo'
  belongs_to :photo_looser, class_name: 'Photo'

  after_create :set_ratings
  after_create :increment_count_of_battles

  private

  def set_ratings
    Photoselector.new(photo_winner, photo_looser).perform
  end

  def increment_count_of_battles
    photo_winner.win!
    photo_looser.loose!
  end
end
