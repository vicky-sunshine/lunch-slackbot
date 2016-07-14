set :environment, 'development'
set :output, nil
every :weekdays, :at => '12:30pm' do
  rake 'slackbot:lunch'
end
