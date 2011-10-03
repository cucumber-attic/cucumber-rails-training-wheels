Feature: Use training wheels

  Scenario: I don't care. I'll use it anyway. Yee-haa!!
    Given I have created a new Rails 3 app "rails-3-app" with cucumber-rails support
    And I successfully run `rails generate cucumber:feature post title:string body:text number:integer published:boolean`
    And I successfully run `rails generate scaffold post title:string body:text number:integer published:boolean`
    And I run `bundle exec rake db:migrate`
    And I run `bundle exec rake cucumber`
    Then it should pass with:
       """
       3 scenarios (3 passed)
       16 steps (16 passed)
       """

