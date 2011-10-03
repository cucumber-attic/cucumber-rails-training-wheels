Feature: Use training wheels

  Scenario: I don't care. I'll use it anyway. Yee-haa!!
    Given I have created a new Rails 3 app "rails-3-app" with cucumber-rails support
    # Generate features/step_definitions/web_steps.rb
    And I successfully run `rails generate cucumber_rails_training_wheels:install`
    # Generate features/post_feature.rb
    And I successfully run `rails generate cucumber_rails_training_wheels:feature post title:string body:text number:integer published:boolean`
    And I successfully run `rails generate scaffold post title:string body:text number:integer published:boolean`
    And I run `bundle exec rake db:migrate`
    And I run `bundle exec rake cucumber`
    Then it should pass with:
       """
       2 scenarios (2 passed)
       13 steps (13 passed)
       """

