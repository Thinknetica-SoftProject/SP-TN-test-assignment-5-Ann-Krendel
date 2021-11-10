## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:


file = File.open("./data/3.txt")
sum = 0
while (line = file.gets) do

	min = line.split(" ")[0].to_i
	max = line.split(" ")[0].to_i

    for i in 1...line.split(" ").size do
        new_el = line.split(" ")[i].to_i
        if new_el > max
            max = new_el
        end
        if new_el < min
            min = new_el
        end
    end

	sum += max - min
end
puts sum
file.close