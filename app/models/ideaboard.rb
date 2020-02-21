class Ideaboard < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy
  has_many :tasks, through: :lists

  validates :ideaboard_name, presence: { message: "A board name is required."}
end
