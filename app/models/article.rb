class Article < ApplicationRecord
  # This line of code specifies that the Article model should have two validations:
  # 1. The title attribute should be present (i.e. not blank or nil).
  # 2. The title attribute should be between 6 and 100 characters in length.
  validates :title, presence: true, length: {minimum: 6, maximum: 100}

  # This line of code specifies that the Article model should have two validations:
  # 1. The description attribute should be present (i.e. not blank or nil).
  # 2. The description attribute should be between 10 and 300 characters in length.
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
