require 'octokit'

client = Octokit::Client.new(access_token: ENV['GIT_ACCESS_TOKEN'])
p client.user
