class Company < ApplicationRecord
    has_many :offices
    has_many :employees
    
    validates :name, presence: true
end
