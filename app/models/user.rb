class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :collaborators
  has_many :canvases, :through => :collaborators

  after_create :own_unsaved_canvases

  def own_unsaved_canvases
    if session[:unsaved_canvases]
      session[:unsaved_canvases].each do |canvas|
        canvas.collaborators.create(:user => self, :permission => "Owner")
      end
    end
  end
end
