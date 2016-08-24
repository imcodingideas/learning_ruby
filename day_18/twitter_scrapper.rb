require 'nokogiri'
require 'net/http'

class TwitterScrapper

  def initialize(url)
    link = url[0]
    @uri = URI(link)
    page = Net::HTTP.get(@uri)
    @doc = Nokogiri::HTML(page)
    extract_username
    extract_stats
    extract_tweets
  end

  def extract_username
    profile_name = @doc.search('.ProfileHeaderCard-name > a')
    puts "Username: #{profile_name.first.inner_text}"
  end

  def extract_tweets
    tweets = @doc.search('.tweet')
    puts 'Tweets'
    likes = ''
    tweets.pop
    tweets.each do |tweet|
      date = tweet.css('span._timestamp.js-short-timestamp').inner_text
      post = tweet.css('.js-tweet-text-container').inner_text
      retweets = tweet.css('.ProfileTweet-actionCountForPresentation').first.text
      likes = tweet.css('.ProfileTweet-actionCountForPresentation').last.text
      puts "\t#{date}: #{post}\n Retweets: #{retweets}, Favorites: #{likes}"
    end
    puts '-' * 80
  end

  def extract_stats
    data = @doc.search('.ProfileNav-value')
    stats = []
    (0..data.length - 1).each { |i| stats << data[i].inner_text }
    puts "Stats: Tweets: #{stats[0]}, Following: #{stats[1]}, Followers: #{stats[2]}, Favorites: #{stats[3]} \n"
  end

end

link = ARGV
test = TwitterScrapper.new(link)