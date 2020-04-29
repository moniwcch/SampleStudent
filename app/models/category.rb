class Category < ApplicationRecord
    validates :name,presence:true,length: { minimum:3, maximum:25 } 
    validates_uniqueness_of :name
    has_many :student_categories
    has_many :students,through: :student_categories
end   