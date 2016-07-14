# lunch-slackbot
Inspired by [slunch](https://github.com/jodeci/slunch) of [jodeci](https://github.com/jodeci).

# Usage
## Install
```shell
$ git clone git@github.com:jodeci/slunch.git  
$ bundle install  
$ cp config/application.yml.example config/application.yml  
$ rake db:create
$ rake db:migrate
```

## Add Lunch List
#### import list by YAML file
Add new restaurant information in `lib/tasks/lunch.yml`, and import by
```shell
$ rake import_data:lunch
```
#### Web UI
Start up server
```shell
$ rails server
```
Go to `localhost:3000/lunches` to maintain your own list.

## Prepare Slackbot
#### Slack Settings
Fill the Slack Information in `config/slack_settings.yml`, and you can use
```shell
$ rake slackbot:channels
```
to find channel id.
#### Schedule Setting
The default timer is set to 12:30 from Monday to Friday. You can modify the schedule at
`config/schedule.rb`.

After you change schedule, you have to run
```shell
$ whenever -i
```
to update crontab job.

You can also change the message of slackbot at
`lib/tasks/slackbot.rake`

## Docker Usage
Work in Progress
