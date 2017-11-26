
#Get subreddit page
require 'unirest'
p "Here are the latest posts on the AdOps SubReddit"
response = Unirest.get("https://www.reddit.com/r/adops/.json")
post_list = response.body

#List post names

posts_to_select_from = post_list["data"]["children"]

number_of_loops = posts_to_select_from.length

i = 0
number_of_loops.times do
article_number = i.to_s
article_title = posts_to_select_from[i]["data"]["title"]
p "#{article_number}. #{article_title}"
  i += 1
end

# alternative way to loop
# posts_to_select_from.each do |post|
#   p post["data"]["selftext"]
# end

#Get comments from selected post
#open url

# response = Unirest.get("https://www.reddit.com/r/adops/comments/.json")
# post_list = response.body

# #List post names

# posts_to_select_from = post_list["data"]["children"]

# number_of_loops = posts_to_select_from.length

# i = 1
# number_of_loops.times do
# article_number = i.to_s
# article_title = posts_to_select_from[i]["data"]["link_title"]
# p "#{article_number}. #{article_title}"
#   i += 1
# end