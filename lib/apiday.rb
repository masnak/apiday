# coding: cp932
#require "enpit/birthday/version"
require 'wikipedia'

    #　入力の初期値
    year = 2000
    month = 12
    day = 31
    
    # 入力部
    def input
      print 'Please set your birthday!'
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
    def wikipedia(year, month, day) 
        page_year = Wikipedia.find(year)
        return page_year.content[1,1000]
    end
    
    # twitter呼び出し部
    def twitter(year, month ,day)
    
    end
    
    # テキスト出力部
    def output
      
    end
 
  # メソッド呼び出し部
  year, month, day = input
  puts wikipedia(year, month, day)
