class Rating < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  after_save :calc_avg_rate


  def calc_avg_rate
    avg=(movie.ratings.sum(:rate)).to_f/(movie.ratings.count).to_f
    movie.update_attribute(:average, avg)
  end
end
