module CosukaPiCount
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'cosuka_pi_count/tasks.rb'
    end
  end
end
