module Faker
  module Problem
    extend ModuleUtils
    extend self

    def problem
      PREFIXES.rand + " " +
      Faker::Product.brand + " " +
      Faker::Product.product + " " +
      Faker::Product.model + " " +
      SUFFIXES.rand
    end

    PREFIXES = k [
      "The ol'",
      "The darn",
      "My old",
      "My brand new",
      "This dumb",
      "My",
      "My dad's",
      "My mother in law's",
      "Stupid"
    ]

    SUFFIXES = k [
      "blew up",
      "is full of cat hair",
      "won't start up",
      "is making funny noises",
      "bit the dust",
      "is making funny noises",
      "is acting weird",
      "has a strange odor",
      "won't connect to the network"
    ]
  end
end
