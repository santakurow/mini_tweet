require "./user"
require "./tweet"
require "./timeline"

class Twitter

  def initialize
    def exec
      puts "ようこそTwitterへ"
      user = User.new
      tweet = Tweet.new
      timeline = Timeline.new
      while true do
        if user.logged_in?
          user.show_signin
        end
        puts "何をしますか？"
        puts "1: タイムラインを見る"
        unless user.logged_in?
          puts "2: 会員登録"
        else
          puts "2: つぶやく"
        end
        puts "3: 終了する"
        input = gets.to_i
        case input
        when 1
          timeline.show_timelines
        when 2
          unless user.logged_in?
            user.regist
          else
            tweet.input_tweet
            timeline.show_timelines
          end
        when 3
          exit
        else
          puts "そんな値ないよ!"
        end

      end
    end
  end

end

Twitter.new.exec