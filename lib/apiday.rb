# coding: utf-8
#require "enpit/birthday/version"
require 'wikipedia'

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
    
    # twitter呼び出し部
    def twitter(year, month ,day)
    
    end
    
    # テキスト出力部
    def output
      
    end

    # メソッド呼び出し部
    year, month, day = Main.new.input
    puts Main.new.wikipedia_year(year)
    puts Main.new.wikipedia_day(month, day)


end
end
