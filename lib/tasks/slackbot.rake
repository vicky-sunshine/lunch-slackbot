require 'slackbot_helper'

namespace :slackbot do

  desc 'lunch time alert'
  task lunch: :environment do
    SlackbotHelper::init
    text = "<!group>\n～報時機器人 12:30 溫馨提示～\n本日午餐推薦：\n"
    Lunch.limit(3).order('RANDOM()').each_with_index do |lunch, index|
      text << "#{index + 1}: #{lunch.name} #{lunch.location}\n"
    end
    text << "～報時機器人關心您～"
    SlackbotHelper::chat text
  end

  desc 'get channel list from slack'
  task channels: :environment do
    SlackbotHelper::init
    puts SlackbotHelper::channels
  end

end
