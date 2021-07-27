class Course < ApplicationRecord
    validates :name, presence: true, length: {minimum: 2, maximum: 50}
    validates :short_name, presence: true, length: {minimum: 2, maximum: 50}
    validates :description, presence: true, length: {minimum: 2, maximum: 1500}

end