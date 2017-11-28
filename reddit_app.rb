
#Get subreddit page
require 'unirest'
p "Here are the latest posts on the AdOps SubReddit"
response = Unirest.get("https://www.reddit.com/r/adops/.json")

#List post names
articles = response.body["data"]["children"]

article_length = articles.length

i = 0
article_length.times do
  article_number = i.to_s
  article_title = articles[i]["data"]["title"]
  p "#{article_number}. #{article_title}"
  i += 1
end

# alternative way to loop
# posts_to_select_from.each do |post|
#   p post["data"]["selftext"]
# end

#Get comments from selected post

p "Which article would you like to view the comments from? Please enter the article number now:"

user_input = gets.chomp.to_i

post_data = articles[user_input]

#permalink

permalink = post_data["data"]["permalink"]

# p permalink

comment_response = Unirest.get("https://www.reddit.com/#{permalink}/.json")

comments = comment_response.body[1]["data"]["children"]

comment_length = comments.length

i = 0
comment_length.times do
  comment_number = i.to_s
  comment_body = comments[i]["data"]["body"]
  p "#{comment_number}. #{comment_body}"
  i += 1
end
## determine how to list all the comments in that array
#target url
#permalink
#add /.json to url
#target comments within .json
