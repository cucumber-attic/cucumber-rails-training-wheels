module CucumberRailsTrainingWheels
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    argument :language, :type => :string,  :banner => "LANG", :optional => true

    def create_env_steps
      empty_directory 'features/step_definitions'

      if language
        template "step_definitions/web_steps_#{language}.rb.erb", "features/step_definitions/web_steps.rb"
      else
        template "step_definitions/web_steps.rb.erb", 'features/step_definitions/web_steps.rb'
      end
    end

    def create_feature_support
      empty_directory 'features/support'
      copy_file       'support/paths.rb',     'features/support/paths.rb'
      copy_file       'support/selectors.rb', 'features/support/selectors.rb'
    end

    protected

    def embed_file(source, indent='')
      IO.read(File.join(self.class.source_root, source)).gsub(/^/, indent)
    end

    def embed_template(source, indent='')
      template = File.join(self.class.source_root, source)
      ERB.new(IO.read(template), nil, '-').result(binding).gsub(/^/, indent)
    end
  end
end