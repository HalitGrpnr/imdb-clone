class Cast < ActiveRecord::Base

  acts_as_commentable

  has_many :actor_movies
  has_many :director_movies
  has_many :movies_acted, through: :actor_movies, source: :movie
  has_many :movies_directed, through: :director_movies, source: :movie


  validates :name, presence: true, null: false
  validates :surname, presence: true, null: false
  validates :bio, presence: true, null: false

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
