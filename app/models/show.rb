class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    binding.pry
    Show.order(:rating).last.name
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end
end
