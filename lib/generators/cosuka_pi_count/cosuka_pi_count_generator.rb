require 'rails/generators'

class CosukaPiCountGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  desc 'Configures the cosuka_pi_count'

  def create_initializer_file
    initializer 'cosuka_pi_count.rb' do
      <<~EOF
        CosukaPiCount.configure do |config|
          config.name = '#{Rails.application.class.module_parent.name.downcase}'
          config.count = -> { User.count }
          config.type = 'standard'
          config.platform = 'aws'
          config.is_important_private_info = 'true'
          config.kintone_api_token = ENV['KINTONE_COSUKA_PI_COUNT_API_KEY']
        end
      EOF
    end
  end
end
