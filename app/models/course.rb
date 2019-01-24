class Course < ActiveRecord::Base

  has_many :grades
  has_many :users, through: :grades

  belongs_to :teacher, class_name: "User"

  validates :name, :credit, :course_type, :teaching_type, :exam_type,   presence: true, length: {maximum: 50}


end
