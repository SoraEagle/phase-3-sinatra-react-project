class Trip < ActiveRecord::Base
    has_many :items, dependent: :destroy
end