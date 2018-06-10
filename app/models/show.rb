class Show < ActiveRecord::Base
  def maximum(:rating)
    SELECT * FROM seasons ORDER BY rating LIMIT 1 ASC;
  end
end
