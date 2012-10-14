class Collaborator < ActiveRecord::Base
  attr_accessible :canvas_id, :permission, :user_id, :email
  belongs_to :user
  belongs_to :canvas
  attr_accessor :email

  #validates_presence_of :user
  validates_presence_of :canvas


  before_validation :get_user

  def get_user
    if self.user.blank?
      u = User.find_by_email(self.email)
      if u
        self.user = u
      else
        self.errors.add(:user, "is not registered. Please ask the user to sign up before adding.")
      end
    end
  end

end
