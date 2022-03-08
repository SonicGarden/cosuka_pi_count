# CosukaPiCount

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cosuka_pi_count', github: 'SonicGarden/cosuka_pi_count', branch: 'main'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cosuka_pi_count

## Usage

以下のコマンドを実行します。

    bin/rails g cosuka_pi_count

作成されたconfig/initializers/cosuka_pi_count.rb で必要に応じて下記を書き換えてください。

* kintone_api_token
* count
  * 件数が多い場合はcount取得でもDB負荷がかかるため、last.id を取るなり工夫してください
```
  config.count => { User.count + Guest.last.id }
```

動作確認の場合は以下のコマンドを実行します

    bin/rake cosuka_pi_count:report

## config/initializers/cosuka_pi_count.rb
|key|説明|
|---|---|
|config.name|アプリケーション名(githubのプロジェクト名と合わせてください)|
|config.type|`'standard'`(VCTO)/`'light'`(業務ハック系)|
|config.platform|`'aws'`/`'heroku'`/`'firebase'`|
|config.count|個人情報・要配慮情報の件数取得コード|
|config.is_important_private_info|`'true'`/`'false'` サービスとして要配慮情報を有している場合 `'true'`|

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cosuka_pi_count.

