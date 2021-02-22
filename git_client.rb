require 'base64'
require 'octokit'

client = Octokit::Client.new(access_token: ENV['GIT_ACCESS_TOKEN'])

contents = client.contents('masato-bkn/AtCoderBeginnerContest', path: "043/c.rb")

content = Base64.decode64(contents.content).force_encoding("UTF-8")
problem_info = content.split("\n")

p title = problem_info[1].delete("# title: ")
p level = problem_info[2].delete("# level: ")
p url = problem_info[3].delete("# url: ")
p categories = problem_info[4].delete("# category: ").delete('¥"').delete("[]").split(",")
