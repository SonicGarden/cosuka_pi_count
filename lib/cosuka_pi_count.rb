require 'faraday'
require 'cosuka_pi_count/version'
require 'cosuka_pi_count/railtie'
require 'cosuka_pi_count/client'
require 'cosuka_pi_count/configuration'

module CosukaPiCount
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end
end
