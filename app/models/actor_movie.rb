class ActorMovie < ActiveRecord::Base
  belongs_to :actor, class_name: "Cast", foreign_key: :cast_id
  belongs_to :movie
end
