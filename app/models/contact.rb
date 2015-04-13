class Contact < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true,
  validates :user_id, presence: true
end
