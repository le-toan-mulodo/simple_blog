require 'factory_girl'
 
    Factory.define(:owner) do |o|
      o.name "John Doe"
      o.email "john@example.org"
      o.address "123 Elm Street"
      o.city "Phoenix"
      o.state "Arizona"
      o.zip "85000"
    end