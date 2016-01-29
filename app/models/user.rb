class User < ActiveRecord::Base
  has_many :requests
  belongs_to :department

  validates_presence_of [:name, :email, :staff_id, :role]

  before_save { self.email = email.downcase }
  enum role: [:manager, :engineer, :accountant, :head_accountant]

  scope :manager_users, ->{User.where(role: self.roles[:manager])}
end
