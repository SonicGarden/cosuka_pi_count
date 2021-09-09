module CosukaPiCount
  class Client
    KINTONE_URL = 'https://sonicgarden.cybozu.com/k/v1/record.json'.freeze
    KINTONE_APP_ID = 1514

    def post
      params = { app: KINTONE_APP_ID,
                 record: {
                   type: { value: CosukaPiCount.configuration.type },
                   name: { value:  CosukaPiCount.configuration.name },
                   count: { value: CosukaPiCount.configuration.count.call }
                 }
      }

      Faraday.post(KINTONE_URL) do |req|
        req.headers['X-Cybozu-API-Token'] = CosukaPiCount.configuration.kintone_api_token
        req.headers['Content-Type'] = 'application/json'
        req.body = params.to_json
      end
    end
  end
end
