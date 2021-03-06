## Задача №4:
#
# В соседнем районе рождественские эльфы готовят подарки для жителей города.
# Для каждого подарка (файл data/4.txt) нужно найти сколько оберточной бумаги потребуется.
# Формула рассчета: 2*ш*д + 2*д*в + 2*в*ш + площадь наименьшей стороны
# Например, на подарок размером 2х3х4 требуется 2*6 + 2*12 + 2*8 = 52 + 6 кв. см.
#
# Сколько всего оберточной бумаги нужно купить эльфам?
#
## Требования к решению:
# - Входные данные находятся в файле data/4.txt
# - В значениях данные длины, ширины и высоты не упорядочены и могут идти в любом порядке, однако
# длина всегда наименьшее число из трех, высота - среднее, ширина - самое большое.
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

file = File.open("./data/4.txt")
x, y, z, sum = 0, 0, 0, 0
while (line = file.gets) do
	x = line.split("x")[0].to_i
	y = line.split("x")[1].to_i
	z = line.split("x")[2].to_i
	sum += 2*(x * y + y * z + x * z)
	res = x * y * z
	if x >= y and x >= z
		res /= x
	elsif y >= x and y >= z
		res /= y
	else
		res /= z
	end
	sum += res	
end
puts sum
file.close

