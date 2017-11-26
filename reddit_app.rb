# require 'unirest'
# p "Here are the posts from the AdOps SubReddit:"
# while comment = gets.chomp
#   case comment
#   when "q"
#     p "Thank you for using the Reddit Comment App"
#     break
#   else
#     response = Unirest.get("https://www.reddit.com/r/adops/.json")
#     reddit_comment = response.body
#     comment = reddit_comment[]
#     p "What comment would you like to view? Enter a number."
#     comment_number = gets.chomp

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
article_title = posts_to_select_from[i]["data"]["selftext"]
p "#{article_number}. #{article_title}"
  i += 1
end

# posts_to_select_from.each do |post|
#   p post["data"]["selftext"]
# end

#Get comments from selected post

