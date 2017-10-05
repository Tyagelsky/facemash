class Photo < ApplicationRecord
  belongs_to :user
  has_many   :won_battles, class_name: 'Battle', source: :photo_winner
  has_many   :loosed_battles, class_name: 'Battle', source: :photo_looser

  mount_uploader :source, SourceUploader
  enum status: %i[created wrong pending approved]

  def win!
    increment(:count_battles)
    increment(:count_win_battles)
    save!
  end

  def loose!
    increment(:count_battles)
    increment(:count_loose_battles)
    save!
  end
end
