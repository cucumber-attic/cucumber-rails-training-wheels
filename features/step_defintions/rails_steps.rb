Given /^I have created a new Rails 3 app "([^"]*)" with cucumber\-rails support$/ do |app_name|
  steps %Q{
    When I successfully run `rails new #{app_name}`
    Then it should pass with:
      """
      README
      """
    And I cd to "#{app_name}"
    And I append to "Gemfile" with:
      """
      gem "cucumber-rails-training-wheels", :group => :test, :path => "../../.."
      gem "cucumber-rails", :group => :test
      gem "capybara", :group => :test
      gem "rspec-rails", :group => :test
      gem "database_cleaner", :group => :test
      gem 'factory_girl', :group => :test

      """
    And I successfully run `bundle exec rails generate cucumber:install`
  }
end