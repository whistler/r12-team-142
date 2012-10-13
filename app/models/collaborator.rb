class Collaborator < ActiveRecord::Base
  attr_accessible :canvas_id, :permission, :user_id
end
