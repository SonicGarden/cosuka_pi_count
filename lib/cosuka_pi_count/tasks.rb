namespace :cosuka_pi_count do
  desc 'Periodic reports'
  task report: :environment do
    Rails.logger.info "[INFO] Start cosuka_pi_count:report env:#{Rails.env}"
    # NOTE: 実行遅延件数をカウント（上限一杯まで失敗したジョブは除く）
    CosukaPiCount::Client.new.post
    Rails.logger.info "[INFO] End cosuka_pi_count:report env:#{Rails.env}"
  end
end
