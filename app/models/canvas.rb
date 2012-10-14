class Canvas < ActiveRecord::Base
  attr_accessible :channels, :cost_structure, :customer_relationships, :customer_segments, 
    :description, :key_activities, :key_partnerships, :key_resources, :public, 
    :revenue_streams, :title, :user_id, :value_propositions, :created_at, :updated_at
  has_many :collaborators
  accepts_nested_attributes_for :collaborators
  has_paper_trail

  def method_missing method_name, *args
    if method_name =~ /^md_(\w+)$/
      md = self.send(method_name[3..method_name.length].to_sym)
      md = "" if md.nil?
      return Markdown.new(md).to_html
    else
      raise NoMethodError
    end
  end

end
