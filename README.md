# Signup test suite
This is a test suite based on Ruby, Cucumber, and Capybara
It can be launched as follows:
	bundle exec cucumber
	
Console output should look something like this:

	Feature: Sign up
		Sign up using the UPS signup page
	
	  Scenario: Sign up successfully                             # features/signup.feature:4
	
		Given user is on the UPS signup page                     # features/step_definitions/steps.rb:15
		When user submits the signup form with valid information # features/step_definitions/steps.rb:19
		Then signup is successful                                # features/step_definitions/steps.rb:23
	
	  Scenario: Signup attempt with required field "First and Last Name" not filled in            # features/signup.feature:9
		Given user is on the UPS signup page                                                      # features/step_definitions/steps.rb:15
	First and Last Name
		When user submits the signup form with required field "First and Last Name" not filled in # features/step_definitions/steps.rb:27
		Then error messages are displayed for the required field "First and Last Name"            # features/step_definitions/steps.rb:32
	
	  Scenario: Signup attempt with required field "Email" not filled in            # features/signup.feature:14
		Given user is on the UPS signup page                                        # features/step_definitions/steps.rb:15
	Email
		When user submits the signup form with required field "Email" not filled in # features/step_definitions/steps.rb:27
		Then error messages are displayed for the required field "Email"            # features/step_definitions/steps.rb:32
	
	  Scenario: Signup attempt with required field "Username" not filled in            # features/signup.feature:19
		Given user is on the UPS signup page                                           # features/step_definitions/steps.rb:15
	Username
		When user submits the signup form with required field "Username" not filled in # features/step_definitions/steps.rb:27
		Then error messages are displayed for the required field "Username"            # features/step_definitions/steps.rb:32
	
	  Scenario: Signup attempt with required field "Password" not filled in            # features/signup.feature:24
		Given user is on the UPS signup page                                           # features/step_definitions/steps.rb:15
	Password
		When user submits the signup form with required field "Password" not filled in # features/step_definitions/steps.rb:27
		Then error messages are displayed for the required field "Password"            # features/step_definitions/steps.rb:32
	
	5 scenarios (5 passed)
	15 steps (15 passed)
	0m34.141s
	┌──────────────────────────────────────────────────────────────────────────────┐
	│ Share your Cucumber Report with your team at https://reports.cucumber.io     │
	│                                                                              │
	│ Command line option:    --publish                                            │
	│ Environment variable:   CUCUMBER_PUBLISH_ENABLED=true                        │
	│ cucumber.yml:           default: --publish                                   │
	│                                                                              │
	│ More information at https://cucumber.io/docs/cucumber/environment-variables/ │
	│                                                                              │
	│ To disable this message, specify CUCUMBER_PUBLISH_QUIET=true or use the      │
	│ --publish-quiet option. You can also add this to your cucumber.yml:          │
	│ default: --publish-quiet                                                     │
	└──────────────────────────────────────────────────────────────────────────────┘
