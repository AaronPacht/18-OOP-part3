class Field
    def initialize(type,hectares)
        @type=type
        @hectares=hectares
    end

    @@corn_fields=[]
    @@wheat_fields=[]
    @@rice_fields=[]
    @@harvested=0
    @@corn_hec=0
    @@wheat_hec=0
    @@rice_hec=0

    attr_accessor:type,:hectares
    
    def self.harvested
        puts "The farm has #{@@harvested} harvested food so far"
    end
end
