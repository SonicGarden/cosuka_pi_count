module CosukaPiCount
  class Configuration
    attr_accessor :type, :platform, :name, :count, :is_important_private_info, :kintone_api_token

    def initialize
      self.type = 'standard'
      self.platform = 'aws'
    end
  end
end
