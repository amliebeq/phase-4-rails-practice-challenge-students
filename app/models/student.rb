class Student < ApplicationRecord
    belongs_to :Instructor
    
    validates :name, presence: true
    validates :age, numericality: { greater_than: 17 }
end
