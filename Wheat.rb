require_relative "Field.rb"
class Wheat<Field
    def self.field(hectares)
        new_field=Field.new("wheat",hectares)
        @@wheat_fields<<new_field
        @@wheat_hec+=hectares
    end

    def self.harvest
        @@wheat_fields.each do |field|
            harv=field.hectares*30
            puts "Harvesting #{harv} food from #{field.hectares} hectare wheat field"
            @@harvested+=harv
        end
    end
    def self.relax
        puts "The sun hangs low, casting an orange glow on a sea of #{@@wheat_hec} hectares of wheat."
    end

    def self.status
        @@wheat_fields.each do |field|
            puts "A wheat field with #{field.hectares} hectares"
        end
    end
end