class Student < ApplicationRecord
    validates :firstname, presence: true ,length: {minimum:2, maximum:10}
    validates :roll, presence: true ,length: {minimum:3, maximum:3}
end
