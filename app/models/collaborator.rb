class Collaborator < ActiveRecord::Base
  attr_accessible :canvas_id, :permission, :user_id, :email
  belongs_to :user
  belongs_to :canvas
  attr_accessor :email
end
