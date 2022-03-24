module CosukaPiCount
  class Client
    KINTONE_URL = 'https://sonicgarden.cybozu.com/k/v1/record.json'.freeze
    KINTONE_APP_ID = 1514

    def post
      params = { app: KINTONE_APP_ID,
                 record: {
                   type: { value: CosukaPiCount.configuration.type },
                   platform: { value: CosukaPiCount.configuration.platform },
                   name: { value:  CosukaPiCount.configuration.name },
                   count: { value: CosukaPiCount.configuration.count.call },
                   is_important_private_info: { value: CosukaPiCount.configuration.is_important_private_info },
                   payment_system_name: { value: CosukaPiCount.configuration.payment_system_name }
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
