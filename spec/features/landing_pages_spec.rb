require 'rails_helper'


# Story: As a user, I can go to a landing page.
RSpec.feature "LandingPages", type: :feature do
  context 'going to a website' do
    Steps 'being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end #end of given
      Then 'I can see a welcome message' do
        expect(page).to have_content 'Welcome'
      end#end of then
    end#end of steps
  end #end of context



  # Story: As a user, I can create a Contact and save it in the database from the landing page. A Contact has a given name, a family name, an email address, and a home address.
  context 'creating a contact and save to database' do
    Steps 'going to a website' do
      Given 'I am on the landing page' do
        visit '/'
      end #end of given
      Then 'I can see a welcome message' do
        expect(page).to have_content 'Welcome'
      end#end of then
      Then 'create contact and save' do
        fill_in 'given_name', with: 'John'
        fill_in 'family_name', with: 'Doe'
        fill_in 'email', with: 'John@gmail.com'
        fill_in 'home_address', with: '123 Fake Street'
      end
      And 'I can submit information' do
        click_button 'Register'
      end
      Then 'I am taken to a page where I can see the contact information' do
        expect(page).to have_content 'John'
        expect(page).to have_content 'Doe'
        expect(page).to have_content 'John@gmail.com'
        expect(page).to have_content '123 Fake Street'
      end
    end#end of steps
  end #end of context



  # Story: As a user I can list all Contacts.
  # 
  # Story: As a user, I can update a Contact.
  #
  # Story: As a user, I can destroy a Contact.
  #
  # Story: As a user, I cannot create a Contact without a first and last name.
  # Hint: Use validations
  #
  # Story: As a user, I can sort all of my Contacts by last name.
  # Hint: Write a method that uses Contact.order(:last_name).all in your Contacts controller.
  #
  # Story: As a user, I can create Contacts with up to three phone numbers.
  # Hint: A Contact has_many Phones. Phones have a number (string) and a type (string, ex: "home"/"work"/"cell").
  #
  # Story: As a user, I can list all of a Contact's phone numbers.








end #rspec end
