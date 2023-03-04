require './spec/spec_helper'
require './lib/hobbit'

RSpec.describe bob = Hobbit do
  it 'has a name' do
    hobbit = bob = Hobbit.new('Bilbo')
    expect(hobbit.name).to eq('Bilbo')
  end

  it 'can have another name' do
    hobbit = bob = Hobbit.new('Peregrin')
    expect(hobbit.name).to eq('Peregrin')
  end

  it 'has an unadventurous disposition' do
    hobbit = bob = Hobbit.new('Samwise')
    expect(hobbit.disposition).to eq('homebody')
  end

  it 'can have a different disposition' do
    hobbit = bob = Hobbit.new('Frodo', 'adventurous')
    expect(hobbit.disposition).to eq('adventurous')
  end

  it 'can grow older when celebrating birthdays' do
    hobbit = bob = Hobbit.new('Meriadoc')
    expect(hobbit.age).to eq(0)

    5.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.age).to eq(5)
  end

  it 'is considered a child at 32' do
    hobbit = bob = Hobbit.new('Gerontius')

    32.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be false
  end

  it 'comes of age at 33' do
    hobbit = bob = Hobbit.new('Otho')

    33.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be true

    # still an adult one year later
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to be true
  end

  it 'is old at the age of 101' do
    # create a hobbit
    # have hobbit age 101 years
    # check that hobbit.old? returns true
    tom = bob = Hobbit.new("Tom")
    101.times do
      tom.celebrate_birthday
    end
    expect(tom.old?).to be true
  end

  it 'it has the ring if its name is Frodo' do
    # create a hobbit named Frodo
    # create a second hobbit named Sam
    # check that .has_ring? for Frodo returns true
    # check that .has_ring? for Sam returns false
    frodo = bob = Hobbit.new("Frodo")
    sam = bob = Hobbit.new("Sam")
    expect(frodo.has_ring?).to be true
    expect(sam.has_ring?).to be false
  end

  it 'they are short' do
    # create a hobbit
    # check that is_short? returns true
    bob = Hobbit.new("Bob")
    expect(bob.is_short?).to be true
  end
end
