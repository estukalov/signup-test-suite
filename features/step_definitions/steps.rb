require 'rubygems'
require 'capybara'
require 'capybara/dsl'

require_relative "../support/pages_module"
include Pages

signup_page = Pages::SignUp.new
my_choice_enrollment_page = Pages::MyChoiceEnrollment.new

After do |scenario|
  Capybara.reset_sessions!
end

Given(/^user is on the UPS signup page$/) do
    visit 'https://wwwapps.ups.com/doapp/signup'
end

When("user submits the signup form with valid information") do
    signup_page.valid_signup
end

Then("signup is successful") do
	my_choice_enrollment_page.verify_signed_in
end

When(/^user submits the signup form with required field "([^"]*)" not filled in$/) do |requiredField|
	puts requiredField
	signup_page.submit_form
end

Then(/^error messages are displayed for the required field "([^"]*)"$/) do |requiredField|
	signup_page.fill_in_fields
	signup_page.clear_field(requiredField)
	signup_page.verify_error_message(requiredField)
end


