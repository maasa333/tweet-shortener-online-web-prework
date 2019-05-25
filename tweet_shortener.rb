def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_one)
  tweet_one.split.map do |original_w|
    if dictionary.keys.include?(original_w.downcase)
      original_w = dictionary[original_w.downcase]
    else
      original_w
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet_one|
    puts word_substituter(tweet_one)
  end
end

def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    word_substituter(tweet_one)
  else
    tweet_one
  end
end

def shortened_tweet_truncator(tweet_one)
  new_tweet = selective_tweet_shortener(tweet_one)
  if new_tweet.length > 140
    puts new_tweet[0..137] += "..."
  else
    new_tweet
  end
end
