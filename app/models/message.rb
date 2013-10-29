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
    :description
  )

  validates :name, presence: true
  validates :organisation, presence: true
  validates :email_address, presence: true
  validates :description, presence: true

  def persisted?
    false
  end
end
