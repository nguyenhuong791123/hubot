# hubot

# Slack APP
1, Add Hubot APP To Slack
2, Setting Hubot
HUBOT_SLACK_TOKEN=xoxb-629435012208-965371589750-na9YBv3KHihOIkRZ3rOeeHx1

# Jenkins APP
1, Import Slack Notification Plugin
2, Import Global Slack Notifier Plugin

# Jenkins Configure Credentials
Scope: Global
Secret: xoxb-629435012208-965371589750-na9YBv3KHihOIkRZ3rOeeHx1

# Jenkins Global Security Setting
CSRF Protection: Check Off

# Jenkins System Setting
Slack Setting
Workspace: jenkins-slack
Credential: Jenkins Configure Credentials
Default channel / member id: #jenkins-hubot(Push Slack Chanel)
Custom slack app bot user: Check On

