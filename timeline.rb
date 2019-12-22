class Timeline

  def show_timelines

    if File.size?("tweet_data.txt") 
      File.open("tweet_data.txt", "r") do |f|
        puts f.read
        puts "\n"
      end
    else
      puts "まだつぶやきがありません。"
      puts "\n"
    end
    
  end

end