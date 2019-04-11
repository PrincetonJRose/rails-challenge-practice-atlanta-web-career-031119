class Employee < ApplicationRecord
    belongs_to :company, optional: true
    
    validates :name, presence: true
    validates :title, presence: true
end
