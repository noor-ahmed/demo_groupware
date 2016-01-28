class User < ActiveRecord::Base
  belongs_to :department
  validates_presence_of [:name, :email, :staff_id, :role]

  before_save { self.email = email.downcase }
end
