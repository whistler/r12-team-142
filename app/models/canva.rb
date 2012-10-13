class Canva < ActiveRecord::Base
  attr_accessible :channels, :cost_structure, :customer_relationships, :customer_segments, :description, :key_activities, :key_partnerships, :key_resources, :public, :revenue_streams, :title, :user_id, :value_propositions
end
