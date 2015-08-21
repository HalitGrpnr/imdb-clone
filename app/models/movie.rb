class Movie < ActiveRecord::Base
  acts_as_commentable

  has_many :category_movies
  has_many :actor_movies
  has_many :director_movies
  has_many :ratings

  has_many :categories, through: :category_movies

  has_many :actors, through: :actor_movies, class_name: "Cast"
  has_many :directors, through: :director_movies, class_name: "Cast"

  validates :title, presence: true, null: false
  validates :description, presence: true, null: false
  validates :storyline, presence: true, null: false

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



end
