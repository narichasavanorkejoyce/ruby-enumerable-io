# frozen_string_literal: true

require_relative '../lib/pets.rb'

pets = Pets.new('data/pets.csv').pets

p pets.count

# We are able to method chain and get the count of cats
p pets.select { |pet| pet.kind == 'cat' }.count
