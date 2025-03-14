# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: 300 },
  { name: 'カフェラテ', price: 400 },
  { name: 'チャイ', price: 460 },
  { name: 'エスプレッソ', price: 340 },
  { name: '緑茶', price: 450 }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: 470 },
  { name: 'アップルパイ', price: 520 },
  { name: 'ホットサンド', price: 410 }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_index = gets.to_i - 1
  puts "#{menus[order_index][:name]}(#{menus[order_index][:price]}円)ですね。"
  order_index
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order_drink_index = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
order_food_index = take_order(FOODS)

total = DRINKS[order_drink_index][:price] + FOODS[order_food_index][:price]
puts "お会計は#{total}円になります。ありがとうございました！"
