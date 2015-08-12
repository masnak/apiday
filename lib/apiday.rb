# coding: utf-8
#require "enpit/birthday/version"
require 'wikipedia'
require 'csv'

module Apiday
 class Main

    #　入力の初期値
    year = 2000
    month = 12
    day = 31
    
    # 入力部
    def input
      print 'Please set your birthday!
'
      print 'Set year : '
      while year = gets.chomp.to_i
        if year < 1000 || year > 3000 then
          puts 'Input error : Please set proper number'
          print 'Set year : '
        else
          break
        end
      end
      print 'Set month : '
      while month = gets.chomp.to_i
        if month < 1 || month > 12 then
          puts 'Input error : Please set proper number'
          print 'Set month : '
        else
          break
        end
      end
      print 'Set day : '
      while day = gets.chomp.to_i
        if day < 1 || day > 31 then
          puts 'Input error : Please set proper number'
          print 'Set day : '
        else
          break
        end
      end
      puts "Your birthday is #{year}/#{month}/#{day}"
      return year, month, day
    end
    
    # wikipedia呼び出し部
    def wikipedia_year(year) 
        page_year = Wikipedia.find(year.to_s + "年")
        index = page_year.content.index("== できごと ==")
        index2 = page_year.content.index("== 誕生 ==")
        return "== " + year.to_s + " ==\n" + page_year.content[index, index2-index]
    end

    def wikipedia_day(month, day)
        page_day = Wikipedia.find(month.to_s + "月" + day.to_s + "日")
        index = page_day.content.index("== できごと ==")
        index2 = page_day.content.index("== フィクションのできごと ==")
       return "== " + month.to_s + "月" + day.to_s + "日 ==\n" + page_day.content[index,index2-index]
    end
    
    def tokyo_wheather(year,month,day)
        #カレントディレクトリ取得
        path =  Dir.pwd
        
        #datディレクトリ配下のCSVを読み込み（1967-2014_tokyo_weather.csv）
        datas = CSV.read(path + "/dat/1967-2014_tokyo_weather.csv")
        
        #検索キーの設定（年/月/日）
        keydate = year.to_s + "/" + month.to_s + "/" + day.to_s
        
        #検索結果の初期化
        result = year.to_s + "年" + month.to_s + "月" + day.to_s + "日の天気情報がありません"

        #ファイルの最後まで繰り返し
        datas.each do |data|
           #検索キーと1列目が一致したら、2列目を結果にセット
           if data[0] == keydate then
              result = year.to_s + "年" + month.to_s + "月" + day.to_s + "日の東京地方のお天気は「" + data[1] + "」でした！"
           end
        end

        #結果の返却
        return result
    end
    
    # メソッド呼び出し部
    #year, month, day = Main.new.input
    puts Main.new.wikipedia_year(year)
    puts Main.new.wikipedia_day(month, day)
    puts Main.new.tokyo_wheather(year,month,day)

end
end
