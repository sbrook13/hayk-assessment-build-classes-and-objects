require 'pry'

class Building
    attr_accessor :name, :number_of_tenants
    attr_reader :address

    @@all = []
    @@total_tenants = []

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self
        @@total_tenants << self.number_of_tenants
    end

    def name_and_address
        @name + ": " + @address
    end    

    def avg_per_floor
        @number_of_tenants / @number_of_floors.to_f 
    end    

    def self.all
        @@all
    end
    
    def self.average_number_tenants
        all.reduce(0) do |sum, building|
            sum + building.number_of_tenants
        end / @@all.length    
    end     
end        


clay_park = Building.new "Clay Park", "2526 Clay Street", 2, 18
alcott = Building.new "The Alcott", "2424 Alcott Street", 4, 47
manhattan_tower_lofts = Building.new "The Manhattan Tower and Lofts", "1801 Bassett St", 6, 72



