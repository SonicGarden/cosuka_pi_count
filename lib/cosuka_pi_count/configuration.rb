module CosukaPiCount
  class Configuration
    attr_accessor :type, :name, :count, :kintone_api_token

    def initialize
      self.type = 'standard'
    end
  end
end
