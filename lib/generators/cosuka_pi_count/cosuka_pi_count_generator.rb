require 'rails/generators'

class CosukaPiCountGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  desc 'Configures the cosuka_pi_count'

  def create_initializer_file
    initializer 'cosuka_pi_count.rb' do
      <<~EOF
        CosukaPiCount.configure do |config|
          config.name = "#{Rails.application.class.module_parent.name.downcase}"
          config.type = 'standard' # `standard`, `owned` or `light`
          config.platform = 'aws' # `aws`, `heroku` or `firebase`
          config.count = -> { User.count }
          config.is_important_private_info = true
          config.payment_system_name = ''
          config.kintone_api_token = ENV['KINTONE_COSUKA_PI_COUNT_API_KEY']
        end
      EOF
    end
  end
end
