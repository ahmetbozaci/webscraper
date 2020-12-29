require 'nokogiri'
require_relative '../lib/scraper.rb'
require 'byebug'

def variables
  scraper = Scrapper.new
  name = scraper.take_name
  price = scraper.take_price
  review = scraper.take_review
  printer_list = []
  name.count.times { |index| printer_list.push([]) }
  name.count.times { |index| printer_list[index].push(name[index],price[index],review[index]) 
  printer_list
end

def display
  puts
  puts 'This scraper show FDM printers from Bangood store'
  puts
  puts 'If you want to sort them by price Press "1"'
  puts
  puts 'If you want to sort them by review Press "2"'
  puts
  print 'Your enter: '
end

def show_printers
  puts
  puts '           PRINTER_NAME      |    PRICE | REVIEW'
  puts '   --------------------------------------------'
end

def input
  number = gets.chomp.to_i
  puts 'Please wait...'
  numbers = [1, 2]
  variables
  result = variable.sort_by{ |list| list[number] }
  show1 = result.size.times do |i|
    show_printers
    puts "#{i + 1} -- #{result[i]}"
  end
  numbers.include?(number) ? ("#{show1}") : (puts "you entered wrong number")
end

display
input