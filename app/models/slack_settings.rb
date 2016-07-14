class SlackSettings < Settingslogic
  source "#{Rails.root}/config/slack_setting.yml"
  namespace Rails.env
end
