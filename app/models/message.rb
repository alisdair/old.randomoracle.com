class Message
	include ActiveModel::Model
  
  attr_accessor(
    :name,
    :organisation,
    :email_address,
    :phone_number,
    :project_name,
    :budget,
    :deadlines,
    :description,
    :horse
  )

  validates :name, presence: true
  validates :organisation, presence: true
  validates :email_address, presence: true
  validates :description, presence: true

  validates :horse, absence: { message: "no horses allowed" }

  def persisted?
    false
  end
end
