class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :email, :password

  has_many :lists
  
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates_presence_of :password, :on => :creates  

  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end 

  def self.me
    find_by_email('julie.reitter@gmail.com')
  end
end