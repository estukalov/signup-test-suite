Feature: Sign up
    Sign up using the UPS signup page

    Scenario: Sign up successfully
      Given user is on the UPS signup page
      When user submits the signup form with valid information
      Then signup is successful
      
    Scenario: Signup attempt with required field "First and Last Name" not filled in
      Given user is on the UPS signup page
      When user submits the signup form with required field "First and Last Name" not filled in
      Then error messages are displayed for the required field "First and Last Name"
      
    Scenario: Signup attempt with required field "Email" not filled in
      Given user is on the UPS signup page
      When user submits the signup form with required field "Email" not filled in
      Then error messages are displayed for the required field "Email"
      
    Scenario: Signup attempt with required field "Username" not filled in
      Given user is on the UPS signup page
      When user submits the signup form with required field "Username" not filled in
      Then error messages are displayed for the required field "Username"
      
    Scenario: Signup attempt with required field "Password" not filled in
      Given user is on the UPS signup page
      When user submits the signup form with required field "Password" not filled in
      Then error messages are displayed for the required field "Password"
      

    

    
