class Student < ApplicationRecord
    validates :firstname, presence: true ,length: {minimum:2, maximum:10}
    validates :roll, presence: true ,length: {minimum:3, maximum:3}
    belongs_to :course
    has_many :student_categories
    has_many :categories,through: :student_categories

end