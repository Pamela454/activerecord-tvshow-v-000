class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.highest_rating.select(:name) 
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.lowest_rating.select("name")
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end
end
