require_relative 'snack'
require 'pry'

class VendingMachine
  attr_reader :inventory
  def initialize
    @inventory = []
  end

  def add_snack(snack)
    inventory << snack
  end

  def snacks_by_name
    inventory.map do |snack|
      snack.name
    end
  end

  def how_many_snacks
    inventory.group_by do |snack, quantity|

      quantity
    end
    binding.pry
  end
end
