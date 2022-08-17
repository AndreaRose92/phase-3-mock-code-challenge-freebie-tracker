class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
    
    def received_one? item_name
        self.freebies.where(item_name: item_name).exists?
    end

    def give_away dev, freebie
        self.received_one?(freebie.item_name) ? freebie.update(dev_id: dev.id) : "You've got no #{freebie.item_name.pluralize} to give!"
    end

end
