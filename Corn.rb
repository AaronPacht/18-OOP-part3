require_relative "Field.rb"
class Corn<Field
    def self.field(hectares)
        new_field=Field.new("corn",hectares)
        @@corn_fields<<new_field
        @@corn_hec+=hectares
    end

    def self.harvest
        @@corn_fields.each do |field|
            harv=field.hectares*20
            puts "Harvesting #{harv} food from #{field.hectares} hectare corn field"
            @@harvested+=harv
        end
    end

    def self.relax
        puts "#{@@corn_hec} hectares of tall green stalks rustling in the breeze fill your horizon."
    end

    def self.status
        @@corn_fields.each do |field|
            puts "A corn field with #{field.hectares} hectares"
        end
    end
end