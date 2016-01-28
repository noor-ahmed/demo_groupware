class Request < ActiveRecord::Base
  belongs_to :user

  validates_presence_of [:request_type, :receiver_id, :method]
  validates :name, presence: true, length: {minimum: 4, maximum: 30}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :due_date, presence: true
  validate :due_date_to_pay

  enum payment_method: [:cash, :check]
  enum request_type: [:Expences, :Advance_for_customer, :Advance_for_staff]

  private
  def due_date_to_pay
    if due_date != nil and due_date <= Date.today
      errors.add :due_date, "Due date must be greater than current date"
    end
  end
end
