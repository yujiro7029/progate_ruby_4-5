require "./food"
require "./drink"

puts "日曜日限定１００円割引セール実施中"

food1= Food.new(name: "ピザ", price: 800, calorie: 700)
food2= Food.new(name: "すし", price: 1000, calorie: 600)
drink1= Drink.new(name: "コーラ", price: 300, amount: 500)
drink2= Drink.new(name: "お茶", price: 200, amount: 400)

menus=[food1,food2,drink1,drink2]

menus.each.with_index(1) do |menu,i|

  puts "#{i}.#{menu.info}"
end

puts "-----------------"
puts "メニューの番号を選択してください"

order= gets.chomp.to_i

selected_menu= menus[order]

puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください（３点以上で100円割引)"

count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}です"
