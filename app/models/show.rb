class Show < ActiveRecord::Base
  
    has_many :characters 
    has_many :actors, through: :characters 

    def actors_list 
        # self.characters.actors.select {|actors| self.characters.actors.full_name}

        self.actors.map{|actor|actor.full_name}
    end 
end