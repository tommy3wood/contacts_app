class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_format_of :email, with: /\A\w+[@]\w+[.][a-z]{2,}\z/

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def country_code
    "+81 #{phone_number}"
  end
end
