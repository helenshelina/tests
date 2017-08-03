Feature: Login page regression tests

  #Background:
  #  Given user Annalisa is a registered user

  Scenario: user is able to log in into app with valid credentials from Lofin page
  Given Log in is opened
   When Annalisa fills login form with valid credentials
   And clicks Log in button
   Then Annalisa should see a user name in the top of the page

   Scenario: user is able to log in into app with valid credentials from Sign up page
    Given Sign up is opened
    When Annalisa fills form with valid credentials
    And clicks Sign up with Email button
    Then Annalisa should see a user name in the top of the page


  # Scenario Outline: user cannot login with invalid credentials
  #   When Annalisa tries to login
  #   And provides <email> and <password>
  #   Then Annalisa should not be logged in
  #   And should see an error message
  #   Examples:
  #     |email          |password |
  #     |valid          |fgrfdfere|
  #     |rgrgre@gre.ge  |valid    |
  #     |fgdfg@fgfd.df  |dfdfsdfs |
  #
  # Scenario: user is able to get new password in case he forgot it
  #   Given Login page is opened
  #   When Annalisa clicks forgot password
  #   And fills and confirm the form
  #   Then Annalisa sees a success message
  #
  # Scenario: unregistered user is not able to use 'forgot password'
  #   Given Janie is not registered
  #   And Login page is opened
  #   When Janie clicks forgot password
  #   And fills and confirm the form
  #   Then Janie sees an error message
