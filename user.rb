class User

  def initialize
    @name = ""
    @login_flag = false
  end

  def regist
    puts "お名前を入力してください"
    @name = gets.chomp
    @login_flag = true
  end

  def show_signin
    puts "\n#{@name}でログイン中です"
    puts "\n"
  end

  def logged_in?
    if @login_flag
      return true
    end
  end
end