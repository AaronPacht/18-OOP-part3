require_relative "Field.rb"
class Rice<Field
    def self.field(hectares)
        new_field=Field.new("rice",hectares)
        @@rice_fields<<new_field
        @@rice_hec+=hectares
    end

    def self.harvest
        @@rice_fields.each do |field|
            harv=field.hectares*25
            puts "Harvesting #{harv} food from #{field.hectares} hectare rice field"
            @@harvested+=harv
        end
    end

    def self.relax
        puts "#{@@rice_hec} hectares of swampy, bright green, interminable, muddy, flat, endless, wet, filthy, green."
    end

    def self.status
        @@rice_fields.each do |field|
            puts "A rice field with #{field.hectares} hectares"
        end
    end
end