# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(suffix)
    self.name = suffix 
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    return self.win.to_f  / (self.win.to_f  + self.lose.to_f )
  end
  
  def show_team_result
    puts "#{@name} の2020年の成績は #{@win}勝#{@lose}負#{@draw}分、勝率は#{calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
team1 = Team.new("Giants")
team1.win = 67
team1.lose = 45
team1.draw = 8
team2 = Team.new("Tigers")
team2.win = 60
team2.lose = 53
team2.draw = 7
team3 = Team.new("Dragons")
team3.win = 60
team3.lose = 55
team3.draw = 5
team4 = Team.new("BayStars")
team4.win = 56
team4.lose = 58
team4.draw = 6
team5 = Team.new("Carp")
team5.win = 52
team5.lose = 56
team5.draw = 12
team6 = Team.new("Swallows")
team6.win = 41
team6.lose = 69
team6.draw = 10

# インスタンスの使用
team1.show_team_result
team2.show_team_result
team3.show_team_result
team4.show_team_result
team5.show_team_result
team6.show_team_result