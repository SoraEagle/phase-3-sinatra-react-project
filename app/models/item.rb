class Item < ActiveRecord::Base
    belongs_to :trip

    def self.by_name
        self.all.order(name: :desc)
    end
end