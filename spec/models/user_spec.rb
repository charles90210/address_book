require 'rails_helper'


# Story: As a user, I can create a Contact and save it in the database from the landing page. A Contact has a given name, a family name, an email address, and a home address.
RSpec.describe User, type: :model do
  it "is a thing" do
  expect{User.new}.to_not raise_error
  end

it "has given_name, family_name, email, home_address" do
  user=User.new
  user.given_name="John"
  user.family_name="Doe"
  user.email="john@gmail.com"
  user.home_address="123 Fake Str"
  expect(user.save).to eq true
  u2=User.find_by_given_name("John")
  expect(user.given_name).to eq "John"
end

end #rspec end
