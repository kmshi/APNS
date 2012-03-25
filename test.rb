#!/usr/bin/env ruby

#The default Ruby 1.9 package now includes RubyGems by default on most platforms
require 'rubygems' 

require 'apns'

#some settings are in /Library/Ruby/Gems/1.8/gems/apns-0.9.0/lib/apns/core.rb
#like @host default to sandbox,we need change it to 'gateway.push.apple.com' in production
#and  @pem = '/Users/apple/Documents/appmobi/APNS/cert.pem' # this should be the path of the pem file not the contentes


device_token = '2D929DBD86C366247F092E347E16A49C75B7B3B61BD160F6BBB5FB680ABEA31B'

#APNS.send_notification(device_token, 'Hello iPhone!' )

#APNS.send_notification(device_token, :alert => 'Hello iPhone!', :badge => 1, :sound => 'default')

APNS.send_notification(device_token, :alert => 'Hello iPhone!', :badge => 1, :sound => 'default',:other => {:sent => 'with apns gem'})


