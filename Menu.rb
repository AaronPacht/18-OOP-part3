require_relative 'Wheat.rb'
require_relative 'Corn.rb'
require_relative 'Rice.rb'
require_relative 'Field.rb'
class Menu

  def initialize

  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a field'
    puts '[2] Harvest all fields'
    puts '[3] Relax'
    puts '[4] Status'
    puts '[5] Exit'
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_a_field
    when 2 then harvest_all
    when 3 then relax_all
    when 4 then status_all
    when 5 then exit
    end
  end

  def add_a_field
    type=""
    until type=="corn" || type=="wheat" || type=="rice"
      puts "type:"
      type=gets.chomp
    end
    hectares=""
    while !/\A\d+\z/.match(hectares)
      puts "hectares:"
      hectares=gets.chomp
    end
    case
    when type=="corn" then Corn.field(hectares.to_i)
    when type=="wheat" then Wheat.field(hectares.to_i)
    when type=="rice" then Rice.field(hectares.to_i)
    end
  end

  def harvest_all
    Corn.harvest
    Wheat.harvest
    Rice.harvest
    Field.harvested
  end

  def relax_all
    Corn.relax
    Wheat.relax
    Rice.relax
  end

  def status_all
    Corn.status
    Wheat.status
    Rice.status
    Field.harvested
  end
end

menu = Menu.new
menu.main_menu