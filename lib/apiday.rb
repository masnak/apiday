#coding: utf-8

#require "apitest/version"
require "open-uri"
require "sinatra"
require "json"


    def recent_repos
      url = "https://api.github.com/search/" +
          "repositories?q=aiit&sort=updated"
      data = JSON.parse(open(url).read)

      data["items"]

    end

         recent_repos.each do |item|
         puts item["full_name"]
         puts item["description"]
         puts item["html_url"]

    end
