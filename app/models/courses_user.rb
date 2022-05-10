class CoursesUser < ApplicationRecord
  belongs_to :user
  belongs_to :class
end
