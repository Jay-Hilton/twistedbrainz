namespace :twistedbrainz do
  task :delete_old_statuses => :environment do
    statuses = Status.where("created_at < ?", Time.now-7.days)
    count = statuses.length
    statuses.destroy_all
    Rails.logger.info("Deleting old statuses. Found #{count} records")
  end
end
