class DirectorMovie < ActiveRecord::Base

  belongs_to :director, foreign_key: "cast_id", class_name: "Cast"
  belongs_to :movie
end
