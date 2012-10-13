class Collaborator < ActiveRecord::Base
  attr_accessible :canvas_id, :permission, :user_id
  belongs_to :user
  belongs_to :canvas
end
