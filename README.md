# Cucumber-Rails Training Wheels

Cucumber-Rails Training Wheels contains a couple of generators to get you started with Cucumber and Rails really quickly. You won't even have to think! There is a little snag: If you don't take those training wheels off immediately you will end up with a complete mess. -And remember - every time you run a Cucumber feature based on Cucumber-Rails Training Wheels, god kills a kitten. But hey, you're running Cucumber!

You have been warned. I think you should read [The training wheels came off](http://aslakhellesoy.com/post/11055981222/the-training-wheels-came-off)

## Installation

Add this to your Gemfile:

    gem "cucumber-rails-training-wheels", :group => :test

Generate `features/step_definitions/web_steps.rb`, which will make you write really bad features:

    rails generate cucumber_rails_training_wheels:install

Or generate a feature file:

    rails generate cucumber_rails_training_wheels:feature post title:string body:text number:integer published:boolean
    rails generate scaffold post title:string body:text number:integer published:boolean

Congratulations! You have created Cucumber features that no stakeholder will ever want to read. Features that don't express
any business value at all, but hey - they are green! Good luck maintaining them. You have become an [MDD](http://skillsmatter.com/podcast/home/refuctoring-your-cukes) pro!

## Pull requests

Please don't bother. This gem exists for the sole purpose of helping people who are reading books or blogs that were written prior to Cucumber-Rails 1.1.0. I really want this code to go away and be forgotten.

If something is broken, just fork it and use your own fork.
