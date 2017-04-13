# frozen_string_literal: true

require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  attr_reader :pets

  def initialize(input_file)
    @pets = []
    CSV.foreach(input_file,
                headers: true,
                # -> is a lambda (a function that is NOT a method)
                header_converters: ->(h) { h.downcase.to_sym }) do |pet|
      @pets << Pet.new(pet.to_hash)
    end
  end
end
