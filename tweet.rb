class Tweet
  def initialize
    
  end

  def input_tweet
    puts "つぶやきを入力してください"
    @text = gets.chomp
    time = Time.new
    time = time.strftime("%H時 %M分")
    File.open("tweet_data.txt", "a") do |f|
      f.puts "#{@text} #{time}"
    end
    
  end
end