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

def take_order(menu_items)
  menu_items.each.with_index(1) do |item, index|
    puts "(#{index})#{item[:name]}: #{item[:price]}円"
  end
  print '>'
  selected_index = gets.to_i - 1
  puts "#{menu_items[selected_index][:name]}(#{menu_items[selected_index][:price]}円)ですね。"
  selected_index
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
selected_drink_index = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
selected_food_index = take_order(FOODS)

total_price = DRINKS[selected_drink_index][:price] + FOODS[selected_food_index][:price]
puts "お会計は#{total_price}円になります。ありがとうございました！"
